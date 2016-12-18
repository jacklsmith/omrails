$( document ).on('turbolinks:load', function() {
    $('#duration-picker').durationPicker({
	  hours: {
	    label: 'hours',
	    min: 0,
	    max: 24
	    },
	  minutes: {
	    label: 'minutes',
	    min: 0,
	    max: 60
	  },
	  seconds: {
	    label: 'seconds',
	    min: 0,
	    max: 60
	  },
	  classname: "duration-picker",
	  responsive: true
	});
});