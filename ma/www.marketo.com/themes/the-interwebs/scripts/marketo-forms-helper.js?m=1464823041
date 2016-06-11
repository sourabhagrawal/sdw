/**
 * Created by nathanbrauer on 1/22/16.
 * nathan@marketera.com
 */
(function ($) {
	/**
	 * Basically an alias of MktoForms2.whenReady,
	 * but only executes the callback for specific form IDs
	 *
	 * @param id
	 * @param callback
	 */
	MktoForms2.whenReadyId = function(id,callback) {
		id = parseInt(id);
		if (!id) return;
		MktoForms2.whenReady(function(form){
			if (parseInt(form.getId()) === id) {
				callback(form);
			}
		});
	};

	/**
	 * Always track the referring page
	 */
	MktoForms2.whenReady(function(form){
		var $form = form.getFormElem();
		form.addHiddenFields({
			productPageViewed: document.referrer,
			// A few easter eggs for our MOPS friends
			TheirFavoriteVideo: 'https://youtu.be/dQw4w9WgXcQ',
			"Hello": "...it's me...",
			"_NEED_HELP_": "Need support for this form? Contact the marketing developers in their Slack channel: #marketing-dev-support"
		});
		$form.find('style').remove();
		$form.find('*').add($form).removeAttr('style');

		/**
		 * TODO: This should use Skynet, not micro.
		 */
		if (CURRENT_LOCALIZATION === 'us') {
			$form.find('#Country,#Phone').closest('.mktoFormCol').remove();
		}
	});

	//$(function () {

		/**
		 * Allow Marketo forms to build by only including the html
		 * e.g. <form id="mktoForm_1234"></form>
		 */
		$('form[id^="mktoForm_"]').not('.initiated').each(function(){
			var ID = parseInt($(this).addClass('initiated').attr('id').match(/([0-9]+)/).pop());
			if (ID) {
				MktoForms2.loadForm('//app-ab13.marketo.com', '561-HYG-937', ID);
			}
		});

		/**
		 * Allow links to open Marketo forms
		 * e.g. <form id="mktoForm_1234"></form>
		 */
		$('a[href*="#mktoForm_"]').not('.initiated').each(function(){
			var $this = $(this),
				ID = parseInt($this.addClass('initiated').attr('href').match(/([0-9]+$)/).pop());

			if (ID) {
				$this.on('click',function(e){
					var $this = $(this);
					e.preventDefault();
					if ($this.data('marketo_form')) {
						MktoForms2.lightbox($this.data('marketo_form')).show();
						return;
					}
					MktoForms2.loadForm('//app-ab13.marketo.com', '561-HYG-937', ID, function(form){
						$this.data('marketo_form',form);
						MktoForms2.lightbox(form).show();
					});
				});
			}
		});

	//});
})(jQuery);