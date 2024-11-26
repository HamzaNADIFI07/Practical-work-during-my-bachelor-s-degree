const checkbox = document.getElementById('Checkbox');
const bg = document.getElementsByName('bg');

checkbox.addEventListener('change', function() {
    if (checkbox.checked) {
        bg.disabled = true;
    } else {
        bg.disabled = false;
    }
});