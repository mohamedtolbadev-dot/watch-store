const fs = require('fs');
let c = fs.readFileSync('index.html', 'utf8');

const HERO_IMAGES = ['images/hero-image/hero-1.jpg','images/hero-image/hero-2.jpg','images/hero-image/hero-3.jpg','images/hero-image/hero-4.jpg'];

const newRenderHero = `let _hIdx=0,_hTimer=null;
function _hGo(n){
  const total=${HERO_IMAGES.length};
  _hIdx=(n+total)%total;
  const tr=document.getElementById('hTrack');
  if(tr) tr.style.transform='translateX('+(_hIdx*100)+'%)';
  document.querySelectorAll('.hero-dot').forEach(function(d,i){d.classList.toggle('on',i===_hIdx);});
  clearTimeout(_hTimer);_hTimer=setTimeout(function(){_hGo(_hIdx+1);},4500);
}
function renderHero(){
  const imgs=${JSON.stringify(HERO_IMAGES)};
  const slides=imgs.map(function(src,i){
    return '<div class="hero-slide"><img src="'+src+'" alt="hero '+(i+1)+'" '+(i===0?'fetchpriority="high"':'loading="lazy"')+' style="position:absolute;inset:0;width:100%;height:100%;object-fit:cover;display:block"></div>';
  }).join('');
  const dots=imgs.map(function(_,i){
    return '<button class="hero-dot'+(i===0?' on':'')+'" onclick="_hGo('+i+')" aria-label="slide '+(i+1)+'"></button>';
  }).join('');
  document.getElementById('hero').innerHTML=\`
  <div class="hero-wrap">
    <div id="hTrack" class="hero-track" style="transform:translateX(0)">\${slides}</div>
    <button class="hero-arrow hero-arrow-prev" onclick="_hGo(_hIdx-1)" aria-label="السابق">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M15 18l-6-6 6-6"/></svg>
    </button>
    <button class="hero-arrow hero-arrow-next" onclick="_hGo(_hIdx+1)" aria-label="التالي">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18l6-6-6-6"/></svg>
    </button>
    <div class="hero-content">
      <div style="display:flex;flex-wrap:wrap;gap:8px;margin-bottom:20px">
        <span class="badge">\${ic('cash',13)} الدفع عند الاستلام</span>
        <span class="badge">\${ic('truck',13)} توصيل مجاني</span>
      </div>
      <h1 style="font-size:clamp(1.75rem,3.5vw,2.75rem);font-weight:600;line-height:1.2;letter-spacing:-0.025em">الأناقة فمعصمك،<br>والعطر فجيبك.</h1>
      <p style="color:var(--muted);margin-top:12px;font-size:15px;max-width:38ch;line-height:1.7">ساعات كلاسيكية من \${WATCH_PRICE} درهم، وباكات عطور من \${PACK_MIN} درهم.</p>
      <div style="margin-top:24px;padding-top:24px;border-top:1px solid var(--line)">
        <div style="display:flex;align-items:baseline;gap:10px">
          <p style="font-size:2rem;font-weight:600;line-height:1;letter-spacing:-0.02em">\${dh(WATCH_PRICE)}</p>
          <p style="font-size:13px;color:var(--muted)">ساعتين بـ \${WATCH_PAIR} <s>\${WATCH_PRICE*2}</s></p>
        </div>
        <ul style="margin-top:14px;display:flex;flex-direction:column;gap:8px;list-style:none;padding:0">
          <li style="display:flex;align-items:center;gap:8px;font-size:14px">\${ic('check',14,2)} وفّر \${WATCH_PRICE*2-WATCH_PAIR} درهم مع عرض الساعتين</li>
          <li style="display:flex;align-items:center;gap:8px;font-size:14px">\${ic('check',14,2)} تأكيد فوري عبر واتساب</li>
          <li style="display:flex;align-items:center;gap:8px;font-size:14px">\${ic('check',14,2)} توصيل مجاني لجميع مدن المغرب</li>
        </ul>
      </div>
      <div style="margin-top:24px;display:flex;flex-direction:column;gap:10px">
        <button onclick="go('watch','w1')" class="btn btn-solid btn-lg" style="width:100%">\${ic('bag',17)} تسوق الآن</button>
        <a href="#packs" class="btn btn-line btn-lg" style="width:100%;text-decoration:none">تصفح باكات العطور</a>
      </div>
      <div style="margin-top:20px;display:flex;align-items:center;justify-content:space-between">
        <div class="hero-dots">\${dots}</div>
        <span style="font-size:12px;color:var(--muted)">\${imgs.length} صور</span>
      </div>
    </div>
  </div>\`;
  _hTimer=setTimeout(function(){_hGo(1);},4500);
}
`;

const start = c.indexOf('function renderHero(){');
const end = c.indexOf('function renderWatches(){');
c = c.substring(0, start) + newRenderHero + '\n' + c.substring(end);
fs.writeFileSync('index.html', c, 'utf8');
console.log('done');
