// Copy buttons on code blocks.
document.querySelectorAll('[data-block] .ec-copy').forEach((b) => {
  b.addEventListener('click', () => {
    const t = b.closest('[data-block]').querySelector('code').innerText.replace(/^\$ /gm, '');
    navigator.clipboard?.writeText(t).catch(() => {});
  });
});

// Palette values copy on click and say so for a moment.
document.querySelectorAll('.copy-value').forEach((b) => {
  let timer;
  b.addEventListener('click', () => {
    navigator.clipboard?.writeText(b.dataset.copy).then(() => {
      b.classList.add('copied');
      clearTimeout(timer);
      timer = setTimeout(() => b.classList.remove('copied'), 1200);
    }, () => {});
  });
});

// Tabs. Without JavaScript the tab row stays hidden and every panel shows.
document.querySelectorAll('[role="tablist"]').forEach((list) => {
  const tabs = [...list.querySelectorAll('[role="tab"]')];
  const select = (tab, focus) => {
    for (const t of tabs) {
      const on = t === tab;
      t.setAttribute('aria-selected', String(on));
      t.tabIndex = on ? 0 : -1;
      document.getElementById(t.getAttribute('aria-controls')).hidden = !on;
    }
    if (focus) tab.focus();
  };
  tabs.forEach((t, i) => {
    t.addEventListener('click', () => select(t));
    t.addEventListener('keydown', (e) => {
      const next = { ArrowRight: i + 1, ArrowLeft: i - 1, Home: 0, End: tabs.length - 1 }[e.key];
      if (next === undefined) return;
      e.preventDefault();
      select(tabs[(next + tabs.length) % tabs.length], true);
    });
  });
  select(tabs[0]);
  list.hidden = false;
});
