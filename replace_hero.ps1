$file = 'c:\Users\lenovo\Downloads\watch-store\index.html'
$c = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)
$s = $c.IndexOf('<!-- HERO -->')
$e = $c.IndexOf('<!-- WATCHES -->')

$newHero = @'
<!-- HERO SLIDER -->
<section id="heroSlider" class="relative overflow-hidden" style="height:92vh;min-height:520px">
  <div id="heroTrack" class="flex h-full" style="width:300%;transition:transform .7s cubic-bezier(.4,0,.2,1)">

    <div class="relative h-full shrink-0" style="width:33.333%">
      <img src="images/hero-image/hero-img-1.png" alt="" class="absolute inset-0 w-full h-full object-cover">
      <div class="absolute inset-0" style="background:linear-gradient(to left,rgba(15,23,42,.72) 0%,rgba(15,23,42,.2) 55%,transparent 100%)"></div>
      <div class="relative h-full flex items-center justify-end">
        <div class="px-8 md:px-24 max-w-2xl text-right">
          <p class="text-saf text-xs font-semibold tracking-[.2em] uppercase mb-5">&#x643;&#x648;&#x644;&#x643;&#x633;&#x64A;&#x648;&#x646; 2026</p>
          <h1 class="font-display text-5xl md:text-7xl text-white leading-[1.2]">&#x633;&#x62A;&#x627;&#x64A;&#x644; &#x641;&#x627;&#x62E;&#x631;<br>&#x628;&#x62B;&#x645;&#x646; &#x645;&#x646;&#x627;&#x633;&#x628;</h1>
          <p class="mt-5 text-white/70 text-lg leading-8">&#x633;&#x627;&#x639;&#x629; &#x628;&#x640;199 &#x62F;&#x631;&#x647;&#x645; &middot; &#x62C;&#x648;&#x62C; &#x628;&#x640;349 &#x62F;&#x631;&#x647;&#x645;<br>&#x643;&#x62A;&#x62E;&#x644;&#x635; &#x645;&#x644;&#x64A; &#x62A;&#x648;&#x635;&#x644;&#x643; &#x627;&#x644;&#x637;&#x644;&#x628;&#x64A;&#x629;</p>
          <div class="mt-8 flex flex-wrap gap-3 justify-end">
            <a href="#montres" class="bg-maj text-white font-semibold px-8 py-4 rounded-full hover:bg-saf hover:text-ink transition">&#x634;&#x648;&#x641; &#x627;&#x644;&#x633;&#x627;&#x639;&#x627;&#x62A;</a>
            <a href="#packs" class="border border-white/50 text-white px-8 py-4 rounded-full font-semibold hover:bg-white hover:text-ink transition">&#x628;&#x627;&#x643;&#x627;&#x62A; &#x627;&#x644;&#x639;&#x637;&#x648;&#x631;</a>
          </div>
        </div>
      </div>
    </div>

    <div class="relative h-full shrink-0" style="width:33.333%">
      <img src="images/hero-image/hero-img-2.png" alt="" class="absolute inset-0 w-full h-full object-cover">
      <div class="absolute inset-0" style="background:linear-gradient(to left,rgba(15,23,42,.72) 0%,rgba(15,23,42,.2) 55%,transparent 100%)"></div>
      <div class="relative h-full flex items-center justify-end">
        <div class="px-8 md:px-24 max-w-2xl text-right">
          <p class="text-saf text-xs font-semibold tracking-[.2em] uppercase mb-5">&#x639;&#x631;&#x636; &#x62E;&#x627;&#x635;</p>
          <h1 class="font-display text-5xl md:text-7xl text-white leading-[1.2]">&#x62C;&#x648;&#x62C; &#x633;&#x627;&#x639;&#x627;&#x62A;<br>&#x628;&#x640;349 &#x62F;&#x631;&#x647;&#x645;</h1>
          <p class="mt-5 text-white/70 text-lg leading-8">&#x643;&#x62A;&#x648;&#x641;&#x631; 49 &#x62F;&#x631;&#x647;&#x645; &middot; &#x627;&#x644;&#x62A;&#x648;&#x635;&#x64A;&#x644; &#x645;&#x62C;&#x627;&#x646;&#x64A;<br>&#x644;&#x62C;&#x645;&#x64A;&#x639; &#x627;&#x644;&#x645;&#x62F;&#x646; &#x627;&#x644;&#x645;&#x63A;&#x631;&#x628;&#x64A;&#x629;</p>
          <div class="mt-8 flex flex-wrap gap-3 justify-end">
            <a href="#montres" class="bg-maj text-white font-semibold px-8 py-4 rounded-full hover:bg-saf hover:text-ink transition">&#x627;&#x633;&#x62A;&#x641;&#x62F; &#x645;&#x646; &#x627;&#x644;&#x639;&#x631;&#x636;</a>
          </div>
        </div>
      </div>
    </div>

    <div class="relative h-full shrink-0" style="width:33.333%">
      <img src="images/hero-image/hero-img-3.png" alt="" class="absolute inset-0 w-full h-full object-cover">
      <div class="absolute inset-0" style="background:linear-gradient(to left,rgba(15,23,42,.72) 0%,rgba(15,23,42,.2) 55%,transparent 100%)"></div>
      <div class="relative h-full flex items-center justify-end">
        <div class="px-8 md:px-24 max-w-2xl text-right">
          <p class="text-saf text-xs font-semibold tracking-[.2em] uppercase mb-5">&#x628;&#x627;&#x643;&#x627;&#x62A; &#x627;&#x644;&#x639;&#x637;&#x648;&#x631;</p>
          <h1 class="font-display text-5xl md:text-7xl text-white leading-[1.2]">&#x631;&#x64A;&#x62D;&#x627;&#x62A; &#x641;&#x627;&#x62E;&#x631;&#x629;<br>&#x645;&#x646; 149 &#x62F;&#x631;&#x647;&#x645;</h1>
          <p class="mt-5 text-white/70 text-lg leading-8">&#x642;&#x646;&#x64A;&#x646;&#x627;&#x62A; 10 &#x645;&#x644; &middot; &#x62E;&#x62A;&#x627;&#x631; &#x627;&#x644;&#x639;&#x637;&#x648;&#x631; &#x62F;&#x64A;&#x627;&#x644;&#x643;<br>&#x62E;&#x644;&#x635; &#x645;&#x644;&#x64A; &#x62A;&#x648;&#x635;&#x644;&#x643; &#x627;&#x644;&#x637;&#x644;&#x628;&#x64A;&#x629;</p>
          <div class="mt-8 flex flex-wrap gap-3 justify-end">
            <a href="#packs" class="bg-maj text-white font-semibold px-8 py-4 rounded-full hover:bg-saf hover:text-ink transition">&#x634;&#x648;&#x641; &#x627;&#x644;&#x628;&#x627;&#x643;&#x627;&#x62A;</a>
          </div>
        </div>
      </div>
    </div>

  </div>

  <button onclick="heroSlide(-1)" class="absolute top-1/2 start-4 md:start-8 -translate-y-1/2 w-12 h-12 rounded-full bg-white/15 backdrop-blur-sm text-white grid place-items-center hover:bg-maj transition z-10" aria-label="prev">
    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 18l-6-6 6-6"/></svg>
  </button>
  <button onclick="heroSlide(1)" class="absolute top-1/2 end-4 md:end-8 -translate-y-1/2 w-12 h-12 rounded-full bg-white/15 backdrop-blur-sm text-white grid place-items-center hover:bg-maj transition z-10" aria-label="next">
    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18l6-6-6-6"/></svg>
  </button>

  <div class="absolute bottom-20 left-1/2 -translate-x-1/2 flex gap-2 z-10" id="heroDots">
    <button onclick="heroGo(0)" class="hero-dot" style="width:2rem;height:6px;border-radius:9999px;background:#fff;transition:all .3s" aria-label="1"></button>
    <button onclick="heroGo(1)" class="hero-dot" style="width:.5rem;height:6px;border-radius:9999px;background:rgba(255,255,255,.4);transition:all .3s" aria-label="2"></button>
    <button onclick="heroGo(2)" class="hero-dot" style="width:.5rem;height:6px;border-radius:9999px;background:rgba(255,255,255,.4);transition:all .3s" aria-label="3"></button>
  </div>

  <div class="absolute bottom-0 inset-x-0 z-10 hidden md:block">
    <div class="bg-white/10 backdrop-blur-md border-t border-white/20">
      <div class="max-w-4xl mx-auto grid grid-cols-4 divide-x divide-white/20 text-white text-center">
        <div class="py-4 px-6"><p class="font-display text-2xl">+500</p><p class="text-xs text-white/60 mt-0.5">&#x643;&#x644;&#x64A;&#x627;&#x646; &#x645;&#x631;&#x62A;&#x627;&#x62D;</p></div>
        <div class="py-4 px-6"><p class="font-display text-2xl">199 &#x62F;&#x631;&#x647;&#x645;</p><p class="text-xs text-white/60 mt-0.5">&#x627;&#x644;&#x633;&#x627;&#x639;&#x629;</p></div>
        <div class="py-4 px-6"><p class="font-display text-2xl">&#x645;&#x62C;&#x627;&#x646;&#x64A;</p><p class="text-xs text-white/60 mt-0.5">&#x627;&#x644;&#x62A;&#x648;&#x635;&#x64A;&#x644;</p></div>
        <div class="py-4 px-6"><p class="font-display text-2xl">COD</p><p class="text-xs text-white/60 mt-0.5">&#x62E;&#x644;&#x635; &#x645;&#x644;&#x64A; &#x62A;&#x648;&#x635;&#x644;&#x643;</p></div>
      </div>
    </div>
  </div>
</section>
<script>
(function(){var cur=0,total=3,timer;function upd(){document.getElementById('heroTrack').style.transform='translateX('+(cur*(100/3))+'%)';document.querySelectorAll('.hero-dot').forEach(function(d,i){d.style.width=i===cur?'2rem':'.5rem';d.style.background=i===cur?'#fff':'rgba(255,255,255,.4)';});}window.heroSlide=function(d){cur=(cur+d+total)%total;upd();reset();};window.heroGo=function(i){cur=i;upd();reset();};function reset(){clearInterval(timer);timer=setInterval(function(){heroSlide(1);},5000);}reset();})();
</script>

'@

$before = $c.Substring(0, $s)
$after = $c.Substring($e)
$result = $before + $newHero + $after
[System.IO.File]::WriteAllText($file, $result, [System.Text.Encoding]::UTF8)
Write-Host 'done'
