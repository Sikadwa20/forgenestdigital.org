(()=>{
 const region=document.querySelector('.portfolio-carousel'),track=region.querySelector('.project-grid'),original=[...track.children],status=document.getElementById('portfolioPosition'),pause=document.getElementById('portfolioPause');
 const reduced=matchMedia('(prefers-reduced-motion: reduce)');let index=0,paused=true,timer,moving=false;
 original.slice(0,2).forEach(card=>{const clone=card.cloneNode(true);clone.setAttribute('aria-hidden','true');clone.inert=true;track.appendChild(clone)});
 function columns(){return innerWidth<=780?1:2}
 function render(animate=true){track.style.transition=animate&&!reduced.matches?'transform .7s ease':'none';track.style.transform='translateX(-'+index*(original[0].getBoundingClientRect().width+26)+'px)';const first=index%4;status.textContent=columns()===2?`${first+1}–${(first+1)%4+1} / 4`:`${first+1} / 4`;[...track.children].forEach((card,i)=>{const visible=i>=index&&i<index+columns();card.inert=!visible;card.setAttribute('aria-hidden',String(!visible))})}
 function move(direction){if(moving)return;moving=true;if(direction<0&&index===0){index=4;render(false);track.getBoundingClientRect()}index+=direction;render();setTimeout(()=>{if(index>=4){index=0;render(false)}moving=false},720)}
 function playback(){clearInterval(timer);pause.textContent=paused?window.forgeTranslate?.('Play')||'Play':window.forgeTranslate?.('Pause')||'Pause';if(!paused&&!document.hidden)timer=setInterval(()=>move(1),6000)}
 region.querySelector('.next').addEventListener('click',()=>{move(1);playback()});region.querySelector('.prev').addEventListener('click',()=>{move(-1);playback()});pause.addEventListener('click',()=>{paused=!paused;playback()});addEventListener('resize',()=>render(false));document.addEventListener('visibilitychange',playback);document.addEventListener('forge-language-change',playback);render(false);playback();
})();
