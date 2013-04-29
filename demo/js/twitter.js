var window_tweets;

function getTweet(username)
{
    var d = new $.Deferred;
    jQuery.ajax({
        type: 'GET',
        url: "http://api.twitter.com/1/statuses/user_timeline.json",
        cache: false,
        dataType: 'jsonp',
        data: {
            count: "10",
            screen_name: username,
            include_rts: "true"
        },
        success: function(tweet)
        {
	    window_tweets = tweet;
	    d.resolve();
        }
    });
    return d.promise();
}

function _outputTweets()
{
        var d = new $.Deferred;
	var html;
	var tweetText;
	var tweets = window_tweets;
	jQuery.each(tweets, function(n)
	{
		tweetText = this.text.replace(/((http:|https:)\/\/[\x21-\x26\x28-\x7e]+)/gi, "<a href='$1'>$1</a>");
		tweetText = tweetText.replace(/@([a-zA-Z0-9]+)?/gi, "<a href='http://twitter.com/$1' target='_blank'>@$1</a>");
		html = '<hr><div class="tweet">';
 		html += '<p class="image"><a href="http://twitter.com/' + this.user.screen_name + '" target="blank"><img src="' + this.user.profile_image_url + '" width="30"></a></p>';
		html += '<p class="user"><a href="http://twitter.com/' + this.user.screen_name + '" target="blank">' + this.user.screen_name + '</a>' + this.user.name + '</p>';
		html += '<p class="text">' + tweetText + '</p>';
		html += '<p class="date">' + this.created_at + '</p>';
		html += '</div>';
		jQuery("#sidebar .userTweet").append(html);
		d.resolve();
	});
	return d.promise();
}

function outputTweets()
{
	setTimeout( function() {
		_outputTweets();
	}, 1000);
}
