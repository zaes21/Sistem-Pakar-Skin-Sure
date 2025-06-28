document.addEventListener("DOMContentLoaded", () => {
  // ✅ 1. Highlight gejala yang dipilih
  const checkboxes = document.querySelectorAll("input[type='checkbox']");
  checkboxes.forEach((box) => {
    box.addEventListener("change", () => {
      const parent = box.closest(".checkbox");
      if (box.checked) {
        parent.style.backgroundColor = "#f0f8ff";
        parent.style.borderRadius = "8px";
      } else {
        parent.style.backgroundColor = "transparent";
      }
    });
  });

  // ✅ 2. Loading saat submit form diagnosa
  const formDiagnosa = document.querySelector("form");
  if (formDiagnosa) {
    formDiagnosa.addEventListener("submit", () => {
      const btn = formDiagnosa.querySelector("button[type='submit']");
      if (btn) {
        btn.disabled = true;
        btn.innerText = "⏳ Menganalisis...";
      }
    });
  }

  // ✅ 3. Tombol Scroll to Top
  const scrollBtn = document.createElement('button');
  scrollBtn.innerText = '↑';
  scrollBtn.className = 'scroll-top';
  Object.assign(scrollBtn.style, {
    display: 'none',
    position: 'fixed',
    bottom: '20px',
    right: '20px',
    padding: '10px',
    borderRadius: '50%',
    border: 'none',
    backgroundColor: '#2c3e50',
    color: 'white',
    cursor: 'pointer',
    fontSize: '20px',
    zIndex: '999',
    boxShadow: '0 4px 10px rgba(0,0,0,0.2)'
  });
  document.body.appendChild(scrollBtn);

  scrollBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });

  window.addEventListener('scroll', () => {
    scrollBtn.style.display = window.scrollY > 200 ? 'block' : 'none';
  });

  // ✅ 4. Alert Fade Out
  setTimeout(() => {
    const alerts = document.querySelectorAll(".alert");
    alerts.forEach(alert => {
      alert.style.transition = "opacity 0.6s";
      alert.style.opacity = 0;
      setTimeout(() => alert.remove(), 500);
    });
  }, 3000);

  // ✅ 5. Hover efek gejala
  const checkboxLabels = document.querySelectorAll(".checkbox");
  checkboxLabels.forEach(label => {
    label.addEventListener("mouseenter", () => {
      label.style.boxShadow = "0 0 8px rgba(0,0,0,0.06)";
    });
    label.addEventListener("mouseleave", () => {
      label.style.boxShadow = "none";
    });
  });

  // ✅ 6. Progress bar CF (hasil.php)
  const bar = document.getElementById("progressBar");
  if (bar) {
    const cfValue = parseInt(bar.dataset.value); // ambil dari data-value
    setTimeout(() => {
      bar.style.width = cfValue + "%";
    }, 300);
  }
});
