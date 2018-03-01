PrimeFaces.locales['pt_BR'] = { closeText: 'Fechar', prevText: 'Anterior', nextText: 'Próximo', currentText: 'Começo', monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'], monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun', 'Jul','Ago','Set','Out','Nov','Dez'], dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'], dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb'], dayNamesMin: ['D','S','T','Q','Q','S','S'], weekHeader: 'Semana', firstDay: 0, isRTL: false, showMonthAfterYear: false, yearSuffix: '', timeOnlyTitle: 'Só Horas', timeText: 'Tempo', hourText: 'Hora', minuteText: 'Minuto', secondText: 'Segundo', ampm: false, month: 'Mês', week: 'Semana', day: 'Dia', allDayText : 'Todo o Dia' };

$(function() {
	$('.js-toggle').bind('click', function(event) {
		$('.js-sidebar, .js-content').toggleClass('is-toggled');
		event.preventDefault();
	});	
});

function openMenu() {
	$("menuProducao").slideToggle();
	}

function userHover() {
    var x = document.getElementById('userOut');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}

function restauraMenu(){
    var x = document.getElementById('menuProducao');
    if (sessionStorage.getItem("menuProducao") === "block") {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';       
    }  
    var y = document.getElementById('menuFerramentas');
    if (sessionStorage.getItem("menuFerramentas") === "block") {
        y.style.display = 'block';
    } else {
        y.style.display = 'none';       
    }  
    var z = document.getElementById('menuCadastros');
    if (sessionStorage.getItem("menuCadastros") === "block") {
        z.style.display = 'block';
    } else {
        z.style.display = 'none';       
    }  
}

function clickProd() {
    var x = document.getElementById('menuProducao');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        sessionStorage.setItem("menuProducao","block");
    } else {
        x.style.display = 'none';
        sessionStorage.setItem("menuProducao","none");        
    }  
}

function clickTools() {
    var x = document.getElementById('menuFerramentas');
    if (x.style.display === 'none') {  	
        x.style.display = 'block';
        sessionStorage.setItem("menuFerramentas","block");
    } else {
        x.style.display = 'none';
        sessionStorage.setItem("menuFerramentas","none");
    }
}

function clickCadastro() {
    var x = document.getElementById('menuCadastros');
    if (x.style.display === 'none') {
        x.style.display = 'block';
        sessionStorage.setItem("menuCadastros","block");
    } else {
        x.style.display = 'none';
        sessionStorage.setItem("menuCadastros","none");
    }
}
