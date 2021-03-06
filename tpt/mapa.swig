<section id="mapa" class="content">
	<h1>Informe-se antes de chegar na UNICAMP</h1>
	<h4>O campus pode ser amedrontador à primeira vista, por isso anote as informações dos departamentos mais importantes, salve uma foto do mapa e verifique as rotas que irá usar!</h4>

	<h3>Restaurantes Universitários</h3>
	<p>Nos Restaurantes Universitários, comumente chamados de "Bandejão", o preço da refeição é de <b style="font-size: 1em;">R$ <s>2,00</s> 3,00 para estudantes</b>. Você deve carregar sua <b style="font-size: 1em;">carteira estudantil</b> nos postos de recarga localizados do lado externo dos restaurantes para utilizá-los.</p>
	<p>Os restaurantes mais utilizados são: Restaurante Universitário (RU), Refeitório da Administração (RA) e Restaurante da Saturnino (RS). Vale lembrar que há um cardápio vegetariano, no entanto o mesmo só é servido no RS.
	<a href="http://www.prefeitura.unicamp.br/servicos/divisao-de-alimentacao/cardapio-dos-restaurantes" target="_blank">Cardápio dos Restaurantes</a></p>
	<b>Tem Telegram? Use o <a href="https://telegram.me/BandeconatoBot" target="_blank">Bot do Bandeco</a>!</b>

	<h3>Circulares</h3>
	<p>A UNICAMP possui 3 linhas de circulares que são gratuitos e facilitam a vida de quem necessita se deslocar pelo campus.</p>
	<div class="trans">
		<div class="bus">Circular I</div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/mapa_circular_1.pdf" target="_blank">Rotas</a></div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/HORARIO%20CIRCULAR%20I" target="_blank">Horários</a></div>
	</div>
	<div class="trans">
		<div class="bus">Circular II</div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/mapa_circular_2.pdf" target="_blank">Rotas</a></div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/HORARIO%20CIRCULAR%20II" target="_blank">Horários</a></div>
	</div>
	<div class="trans">
		<div class="bus">Circular Noturno</div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/mapa_circular_noturno.pdf" target="_blank">Rotas</a></div>
		<div class="bus"><a href="http://www.prefeitura.unicamp.br/documentos/HORARIO%20CIRCULAR%20NOTURNO" target="_blank">Horários</a></div>
	</div>
	<p></p>
	<h3>Rotas pela Unicamp e Além</h3>
	<div class="route_controls clearfix">
		<div>De: </div>
		<div class="select_control">
			<select id="route-origin">
				<option data-method="walking" value="-22.822157,-47.069908">Avenida 1</option>
				<option data-method="walking" value="-22.818498,-47.072880">Avenida 2</option>
				<option data-method="walking" value="-22.817617,-47.068376" selected>CB</option>
				<option data-method="walking" value="-22.817699,-47.071109">PB</option>
				<option data-method="walking" value="-22.820818,-47.066615">FEEC</option>
				<option data-method="transit" value="-22.913984,-47.0679922">SENAI</option>
				<option data-method="walking" value="-22.817403,-47.071238">Bandejão (RU)</option>
				<option data-method="walking" value="-22.815311,-47.062655">Bandejão (RS)</option>
				<option data-method="walking" value="-22.8225874,-47.0661378">Bandejão (RA)</option>
				<option data-method="walking" value="-22.8190715,-47.0731202">Star Clean</option>
				<option data-method="walking" value="-22.819509, -47.073297">Star Trash</option>
				<option data-method="walking" value="-22.822222, -47.070276">Marambar</option>
				<option data-method="transit" value="-22.8431696, -47.053904">Campinas Hall</option>
				<option data-method="transit" value="-22.8328212, -47.0402929">Prime Hall</option>
			</select>
		</div>
		<div>Para: </div>
		<div class="select_control">
			<select id="route-dest">
				<option data-method="walking" value="-22.822157,-47.069908">Avenida 1</option>
				<option data-method="walking" value="-22.818498,-47.072880">Avenida 2</option>
				<option data-method="walking" value="-22.817617,-47.068376">CB</option>
				<option data-method="walking" value="-22.817699,-47.071109">PB</option>
				<option data-method="walking" value="-22.820818,-47.066615" selected>FEEC</option>
				<option data-method="transit" value="-22.913984,-47.0679922">SENAI</option>
				<option data-method="walking" value="-22.817403,-47.071238">Bandejão (RU)</option>
				<option data-method="walking" value="-22.815311,-47.062655">Bandejão (RS)</option>
				<option data-method="walking" value="-22.8225874,-47.0661378">Bandejão (RA)</option>
				<option data-method="walking" value="-22.8190715,-47.0731202">Star Clean</option>
				<option data-method="walking" value="-22.819509, -47.073297">Star Trash</option>
				<option data-method="walking" value="-22.822222, -47.070276">Marambar</option>
				<option data-method="transit" value="-22.8431696, -47.053904">Campinas Hall</option>
				<option data-method="transit" value="-22.8328212, -47.0402929">Prime Hall</option>
			</select>
		</div>
		<div>Transporte: </div>
		<div class="select_control">
			<select id="route-method">
				<option value="walking" selected>Andando</option>
				<option value="driving">Carro</option>
				<option value="transit">Ônibus</option>
				<option value="bicycling">Bicicleta</option>
			</select>
		</div>
	</div>
	<div id="map-canvas"></div>
	<div class="locals">
		<ul class="listFixed">
			<li><b>Avenida 1:</b> Avenida Doutor Romeu Tórtima</li>
			<li><b>Avenida 2:</b> Avenida Professor Atílio Martini</li>
			<li><b>CB:</b> Ciclo Básico I<br><span class="small">Fica na praça central, mais afastado das entradas.</span></li>
			<li><b>PB:</b> Ciclo Básico II<br><span class="small">Fica mais próximo do Bandejão. Dá para vê-lo da entrada da Avenida 2.</span></li>
			<li><b>FEEC:</b> Faculdade de Engenharia Elétrica e de Computação<br><span class="small">Fica mais próximo da entrada da Avenida 1</span></li>
			<li><b>SENAI:</b> SENAI Roberto Mange<br><span class="small">Melhor instituto não-oficial da Unicamp</span></li>
			<li><b>Bandejão RU:</b> Restaurante Universitário<br><span class="small">Fica mais próximo da entrada da Avenida 2.</span></li>
		</ul>
		<ul class="listFixed">
			<li><b>Bandejão RS:</b> Restaurante Universitário<br><span class="small">Fica mais próximo do IC 3.</span></li>
			<li><b>Bandejão RA:</b> Restaurante Universitário<br><span class="small">Fica mais próximo da FEEC.</span></li>
			<li><b>Star Clean:</b> Bar $$$<br><span class="small">O mais perto do CB</span></li>
			<li><b>Star Trash:</b> Bar $<br><span class="small">Quando você só quer chapar</span></li>
			<li><b>Marambar:</b> Bar $$<br><span class="small">Point da elétrica</span></li>
			<li><b>Campinas Hall:</b> Casa de festas<br><span class="small">A mais popular.</span></li>
			<li><b>Prime Hall:</b> Casa de festas<br><span class="small">A mais cara.</span></li>
		</ul>
	</div>
</section>
