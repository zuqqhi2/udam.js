function youtube_search(keyword,maxresults){
  var keyword=encodeURIComponent(keyword);
  var script=document.createElement("script");
  script.type="text/javascript";
  script.src="http://gdata.youtube.com/feeds/api/videos?"
    + "vq=" + keyword + "&alt=json-in-script&max-results=" + maxresults + "&callback=yt_cb";
  var yt_view=document.getElementById("yt_view");
  yt_view.innerHTML="Loading...";
  yt_view.appendChild(script);
}
var imgs=[];
var timer=false;
function imgs_update(){
  if(!timer){
    timer=true;
    for(var i=0;i<imgs.length;i++){
      var o=imgs[i].thumbnail.shift();
      imgs[i].img.src=o.url;
      imgs[i].thumbnail.push(o);
    }
    setTimeout(function(){timer=false;imgs_update();},2000);
  }
}
function yt_cb(data){
  var yt_view=document.getElementById("yt_view");
  yt_view.innerHTML="";
  imgs=[];
  for (var i=0,e=data.feed.entry;i<e.length;i++){
    var group=e[i].media$group;
    var a=document.createElement("a");
    var img=document.createElement("img");
    a.href    = group.media$player[0].url;
    a.title   = group.media$title.$t;
    img.src   = group.media$thumbnail[0].url;
    img.width = '120';
    a.appendChild(img);
    yt_view.appendChild(a);
    imgs.push({img:img, thumbnail:group.media$thumbnail.concat()});
  }

  imgs_update();
}
