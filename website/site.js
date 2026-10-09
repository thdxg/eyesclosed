// Palette format: hex, RGB or HSL. Without JavaScript the switch stays hidden and hex shows.
const chips = document.querySelectorAll('.chip');
document.querySelectorAll('[data-formats]').forEach((group) => {
  const buttons = [...group.querySelectorAll('button')];
  const show = (format) => {
    for (const b of buttons) b.setAttribute('aria-pressed', String(b.dataset.format === format));
    for (const c of chips) {
      c.querySelector('.v').textContent = c.dataset[format];
      c.setAttribute('aria-label', `Copy ${c.querySelector('.chip-name').textContent} ${c.dataset[format]}`);
    }
  };
  buttons.forEach((b) => b.addEventListener('click', () => show(b.dataset.format)));
  group.hidden = false;
});

// A chip copies its value and says so for a moment.
chips.forEach((c) => {
  let timer;
  c.addEventListener('click', () => {
    navigator.clipboard?.writeText(c.querySelector('.v').textContent).then(() => {
      c.classList.add('copied');
      clearTimeout(timer);
      timer = setTimeout(() => c.classList.remove('copied'), 1200);
    }, () => {});
  });
});
