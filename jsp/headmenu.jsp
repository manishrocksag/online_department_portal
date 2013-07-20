<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 1</title>
<style type="text/css">
.auto-style5 {
	text-align: center;
}
</style>
<script type="text/javascript">
<!--
function FP_swapImg() {//v1.0
 var doc=document,args=arguments,elm,n; doc.$imgSwaps=new Array(); for(n=2; n<args.length;
 n+=2) { elm=FP_getObjectByID(args[n]); if(elm) { doc.$imgSwaps[doc.$imgSwaps.length]=elm;
 elm.$src=elm.src; elm.src=args[n+1]; } }
}

function FP_preloadImgs() {//v1.0
 var d=document,a=arguments; if(!d.FP_imgs) d.FP_imgs=new Array();
 for(var i=0; i<a.length; i++) { d.FP_imgs[i]=new Image; d.FP_imgs[i].src=a[i]; }
}

function FP_getObjectByID(id,o) {//v1.0
 var c,el,els,f,m,n; if(!o)o=document; if(o.getElementById) el=o.getElementById(id);
 else if(o.layers) c=o.layers; else if(o.all) el=o.all[id]; if(el) return el;
 if(o.id==id || o.name==id) return o; if(o.childNodes) c=o.childNodes; if(c)
 for(n=0; n<c.length; n++) { el=FP_getObjectByID(id,c[n]); if(el) return el; }
 f=o.forms; if(f) for(n=0; n<f.length; n++) { els=f[n].elements;
 for(m=0; m<els.length; m++){ el=FP_getObjectByID(id,els[n]); if(el) return el; } }
 return null;
}
// -->
</script>
</head>

<body onload="FP_preloadImgs(/*url*/'menu/button4.jpg',/*url*/'menu/button5.jpg',/*url*/'menu/button7.jpg',/*url*/'menu/button8.jpg',/*url*/'menu/buttonA.jpg',/*url*/'menu/buttonB.jpg',/*url*/'menu/buttonD.jpg',/*url*/'menu/buttonE.jpg')">

    <div style="position: absolute; top:167px; left:17px">
<p style="height: 40px; width: 1077px;" class="auto-style5">
    <img id="img4" alt="HOME" height="40" onmousedown="FP_swapImg(1,0,/*id*/'img4',/*url*/'menu/button5.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img4',/*url*/'menu/button3.jpg')" onmouseover="FP_swapImg(1,0,/*id*/'img4',/*url*/'menu/button4.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img4',/*url*/'menu/button4.jpg')" src="menu/button3.jpg" style="border: 0" width="255" /><!-- MSComment="imenu/button" fp-style="fp-btn: Soft Tab 9; fp-font: SketchFlow Print; fp-font-style: Bold; fp-font-size: 18; fp-proportional: 0" fp-title="HOME" -->
    <a href="faculty.jsp"><img id="img5" alt="Faculty" height="40" onmousedown="FP_swapImg(1,0,/*id*/'img5',/*url*/'menu/button8.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img5',/*url*/'menu/button6.jpg')" onmouseover="FP_swapImg(1,0,/*id*/'img5',/*url*/'menu/button7.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img5',/*url*/'menu/button7.jpg')" src="menu/button6.jpg" style="border: 0" width="254" /><!-- MSComment="imenu/button" fp-style="fp-btn: Soft Tab 9; fp-font: SketchFlow Print; fp-font-style: Bold; fp-font-size: 18; fp-proportional: 0" fp-title="Faculty" --></a>
    <img id="img2" alt="About" height="40" onmousedown="FP_swapImg(1,0,/*id*/'img2',/*url*/'menu/buttonB.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img2',/*url*/'menu/button9.jpg')" onmouseover="FP_swapImg(1,0,/*id*/'img2',/*url*/'menu/buttonA.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img2',/*url*/'menu/buttonA.jpg')" src="menu/button9.jpg" style="border: 0" width="255" /><!-- MSComment="imenu/button" fp-style="fp-btn: Soft Tab 9; fp-font: SketchFlow Print; fp-font-style: Bold; fp-font-size: 18; fp-proportional: 0" fp-title="About" -->
    <img id="img3" alt="Contact Us" height="40" onmousedown="FP_swapImg(1,0,/*id*/'img3',/*url*/'menu/buttonE.jpg')" onmouseout="FP_swapImg(0,0,/*id*/'img3',/*url*/'menu/buttonC.jpg')" onmouseover="FP_swapImg(1,0,/*id*/'img3',/*url*/'menu/buttonD.jpg')" onmouseup="FP_swapImg(0,0,/*id*/'img3',/*url*/'menu/buttonD.jpg')" src="menu/buttonC.jpg" style="border: 0" width="254" /><!-- MSComment="imenu/button" fp-style="fp-btn: Soft Tab 9; fp-font: SketchFlow Print; fp-font-style: Bold; fp-font-size: 18; fp-proportional: 0" fp-title="Contact Us" -->
</p>
</div>
</body>

</html>
