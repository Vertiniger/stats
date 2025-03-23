const socket = io(),
	options = {
		plotOptions: {
			series: {
				events: {
					legendItemClick: function(event) {
						event.preventDefault()
					}
				}
			}
		},
		chart: {
			backgroundColor: '',
			renderTo: 'graph',
			plotBorderColor: '#715ec9'
		},
		title: {
			text: ''
		},
		xAxis: {
			type: 'datetime',
			dateTimeLabelFormats: {
				day: '%a'
			}
		},
		yAxis: {
			title: {
				text: 'Permintaan Per Detik',
				margin: 10
			}
		},
		credits: {
			enabled: false
		},
		series: [{
			type: 'area',
			name: 'Jumlah Permintaan',
			color: '#5b4ba3',
			data: []
		}]
	},
	chart = new Highcharts.Chart(options)

Highcharts.setOptions({
	lang: {
		loading: 'Memuat...',
		months: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
		weekdays: ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'],
		shortMonths: ['Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Agu', 'Sep', 'Okt', 'Nov', 'Des']
	}
})

function getStringCount(count) {
	if(count === 0) return '0'
	count = Math.floor(count)
	let i = 0 === count ? count : Math.floor(Math.log(count) / Math.log(1000)),
		result = parseFloat((count / Math.pow(1000, i)).toFixed(2))
	if(i >= 17) return '∞'
	result += ['', ' Ribu', ' Juta', ' Miliar', ' Triliun', ' Kuadriliun', ' Kuintiliun', ' Sekstiliun', ' Septiliun', ' Oktiliun', ' Noniliun', ' Desiliun', ' Undesiliun', ' Dodesiliun', ' Tredesiliun', ' Kuatuordesiliun', ' Kwindesiliun'][i]
	result = result.replace(/e/g, '')
	result = result.replace(/\+/g, '')
	result = result.replace(/Infinity/g, '∞')
	return result
}

socket.on('requests', (all_requests, per_requests, max_requests) => {
	chart.series[0].addPoint([new Date().getTime(), per_requests], true, chart.series[0].points.length > 60)
	document.getElementById('total_day_requests').innerHTML = getStringCount(all_requests)
	document.getElementById('max_requests').innerHTML = getStringCount(max_requests)
})
