
/* Share counters */

$(document).ready(function(){
	var countUp, setCount, url;

	url = window.location.href;

	$.getJSON("https://urls.api.twitter.com/1/urls/count.json?url=" + url + "&callback=?", function(json) {
		return setCount($(".twCount"), json.count);
	});

	$.getJSON("https://graph.facebook.com/" + url, function(json) {
		return setCount($(".fbCount"), json.shares);
	});

	countUp = function($item) {
		return setTimeout(function() {
			var current, newCount, target;
			current = $item.attr("data-current-count") * 1;
			target = $item.attr("data-target-count") * 1;
			newCount = current + Math.ceil((target - current) / 2);
			$item.attr("data-current-count", newCount);
			$item.html(newCount);
			if (newCount < target) {
				return countUp($item);
			}
		}, 100);
	};

	setCount = function($item, count) {
		if (count === null) {
			count = null;
		}
		$item.attr("data-target-count", count);
		$item.attr("data-current-count", 0);
		return countUp($item);
	};
});
