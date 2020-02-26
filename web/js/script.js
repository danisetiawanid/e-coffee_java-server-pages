



function sum() {
    var amount = document.querySelector('.amount').value;
    var result = 20000 * parseInt(amount);
    if(!isNaN(result)) {
        document.querySelector('.result').value = result;
    }

    // Fungsi format rupiah
    var rupiah = document.getElementById('rupiah');
    rupiah.addEventListener('mouseover', function(e) {
        // tambahkan 'Rp.' pada saat form diketik;
        // gunakan fungsi formatRupiah() untuk mengubah angka yang diketik menjadi format angka
        rupiah.value = formatRupiah(this.value, 'Rp. ');
    });

    // Fungsi formatRupiah
    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, '').toString(),
        split             = number_string.split(','),
        sisa              = split[0].length % 3,
        rupiah            = split[0].substr(0, sisa),
        ribuan            = split[0].substr(sisa).match(/\d{3}/gi);

        // tambahkan titik jika yang diimput sudah menjadi angka ribuan
        if(ribuan){
            separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }
        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
        return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
    }
}

function sum1() {
    var amount = document.querySelector('.amount1').value;
    var result = 20000 * parseInt(amount);
    if(!isNaN(result)) {
        document.querySelector('.result1').value = result;
    }

    // Fungsi format rupiah
    var rupiah = document.getElementById('rupiah1');
    rupiah.addEventListener('mouseover', function(e) {
        // tambahkan 'Rp.' pada saat form diketik;
        // gunakan fungsi formatRupiah() untuk mengubah angka yang diketik menjadi format angka
        rupiah.value = formatRupiah(this.value, 'Rp. ');
    });

    // Fungsi formatRupiah
    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, '').toString(),
        split             = number_string.split(','),
        sisa              = split[0].length % 3,
        rupiah            = split[0].substr(0, sisa),
        ribuan            = split[0].substr(sisa).match(/\d{3}/gi);

        // tambahkan titik jika yang diimput sudah menjadi angka ribuan
        if(ribuan){
            separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }
        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
        return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
    }
}

function sum2() {
    var amount = document.querySelector('.amount2').value;
    var result = 20000 * parseInt(amount);
    if(!isNaN(result)) {
        document.querySelector('.result2').value = result;
    }

    // Fungsi format rupiah
    var rupiah = document.getElementById('rupiah2');
    rupiah.addEventListener('mouseover', function(e) {
        // tambahkan 'Rp.' pada saat form diketik;
        // gunakan fungsi formatRupiah() untuk mengubah angka yang diketik menjadi format angka
        rupiah.value = formatRupiah(this.value, 'Rp. ');
    });

    // Fungsi formatRupiah
    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, '').toString(),
        split             = number_string.split(','),
        sisa              = split[0].length % 3,
        rupiah            = split[0].substr(0, sisa),
        ribuan            = split[0].substr(sisa).match(/\d{3}/gi);

        // tambahkan titik jika yang diimput sudah menjadi angka ribuan
        if(ribuan){
            separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }
        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
        return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
    }
}




