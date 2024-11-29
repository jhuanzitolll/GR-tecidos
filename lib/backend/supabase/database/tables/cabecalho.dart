import '../database.dart';

class CabecalhoTable extends SupabaseTable<CabecalhoRow> {
  @override
  String get tableName => 'cabecalho';

  @override
  CabecalhoRow createRow(Map<String, dynamic> data) => CabecalhoRow(data);
}

class CabecalhoRow extends SupabaseDataRow {
  CabecalhoRow(super.data);

  @override
  SupabaseTable get table => CabecalhoTable();

  String get codped => getField<String>('codped')!;
  set codped(String value) => setField<String>('codped', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  DateTime? get hora => getField<DateTime>('hora');
  set hora(DateTime? value) => setField<DateTime>('hora', value);

  String? get nomecli => getField<String>('nomecli');
  set nomecli(String? value) => setField<String>('nomecli', value);

  double? get vliq => getField<double>('vliq');
  set vliq(double? value) => setField<double>('vliq', value);

  double? get vbruto => getField<double>('vbruto');
  set vbruto(double? value) => setField<double>('vbruto', value);

  String? get obs2 => getField<String>('obs2');
  set obs2(String? value) => setField<String>('obs2', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get cancelado => getField<String>('cancelado');
  set cancelado(String? value) => setField<String>('cancelado', value);

  String? get forma => getField<String>('forma');
  set forma(String? value) => setField<String>('forma', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get itens => getField<String>('itens');
  set itens(String? value) => setField<String>('itens', value);

  String? get garcon => getField<String>('garcon');
  set garcon(String? value) => setField<String>('garcon', value);

  DateTime? get entrega => getField<DateTime>('entrega');
  set entrega(DateTime? value) => setField<DateTime>('entrega', value);

  DateTime? get hr => getField<DateTime>('hr');
  set hr(DateTime? value) => setField<DateTime>('hr', value);

  String? get nota => getField<String>('nota');
  set nota(String? value) => setField<String>('nota', value);

  String? get midia => getField<String>('midia');
  set midia(String? value) => setField<String>('midia', value);

  String? get nf => getField<String>('nf');
  set nf(String? value) => setField<String>('nf', value);

  String? get obs3 => getField<String>('obs3');
  set obs3(String? value) => setField<String>('obs3', value);

  String? get nomenf => getField<String>('nomenf');
  set nomenf(String? value) => setField<String>('nomenf', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get conferef => getField<String>('conferef');
  set conferef(String? value) => setField<String>('conferef', value);

  String? get confereg => getField<String>('confereg');
  set confereg(String? value) => setField<String>('confereg', value);

  String? get impresso => getField<String>('impresso');
  set impresso(String? value) => setField<String>('impresso', value);

  String? get dtpag => getField<String>('dtpag');
  set dtpag(String? value) => setField<String>('dtpag', value);

  String? get codcli => getField<String>('codcli');
  set codcli(String? value) => setField<String>('codcli', value);

  DateTime? get hota => getField<DateTime>('hota');
  set hota(DateTime? value) => setField<DateTime>('hota', value);

  double? get desc1 => getField<double>('desc1');
  set desc1(double? value) => setField<double>('desc1', value);

  String? get garcon2 => getField<String>('garcon2');
  set garcon2(String? value) => setField<String>('garcon2', value);

  double? get desc2 => getField<double>('desc2');
  set desc2(double? value) => setField<double>('desc2', value);

  String? get loja => getField<String>('loja');
  set loja(String? value) => setField<String>('loja', value);

  String? get pago => getField<String>('pago');
  set pago(String? value) => setField<String>('pago', value);

  String? get atac => getField<String>('atac');
  set atac(String? value) => setField<String>('atac', value);

  String? get av => getField<String>('av');
  set av(String? value) => setField<String>('av', value);

  String? get comanda => getField<String>('comanda');
  set comanda(String? value) => setField<String>('comanda', value);

  String? get transok => getField<String>('transok');
  set transok(String? value) => setField<String>('transok', value);

  String? get jaimp => getField<String>('jaimp');
  set jaimp(String? value) => setField<String>('jaimp', value);

  String? get pendencia => getField<String>('pendencia');
  set pendencia(String? value) => setField<String>('pendencia', value);

  String? get cancelada => getField<String>('cancelada');
  set cancelada(String? value) => setField<String>('cancelada', value);

  String? get cvale => getField<String>('cvale');
  set cvale(String? value) => setField<String>('cvale', value);

  String? get ccartao => getField<String>('ccartao');
  set ccartao(String? value) => setField<String>('ccartao', value);

  String? get dinheiro => getField<String>('dinheiro');
  set dinheiro(String? value) => setField<String>('dinheiro', value);

  String? get ticket => getField<String>('ticket');
  set ticket(String? value) => setField<String>('ticket', value);

  String? get cheque => getField<String>('cheque');
  set cheque(String? value) => setField<String>('cheque', value);

  String? get fone => getField<String>('fone');
  set fone(String? value) => setField<String>('fone', value);

  String? get coddes => getField<String>('coddes');
  set coddes(String? value) => setField<String>('coddes', value);

  String? get porcod => getField<String>('porcod');
  set porcod(String? value) => setField<String>('porcod', value);

  String? get codorig => getField<String>('codorig');
  set codorig(String? value) => setField<String>('codorig', value);

  String? get numprot => getField<String>('numprot');
  set numprot(String? value) => setField<String>('numprot', value);

  String? get numnfe => getField<String>('numnfe');
  set numnfe(String? value) => setField<String>('numnfe', value);

  String? get periodo => getField<String>('periodo');
  set periodo(String? value) => setField<String>('periodo', value);

  String? get campo01 => getField<String>('campo01');
  set campo01(String? value) => setField<String>('campo01', value);

  String? get caixa => getField<String>('caixa');
  set caixa(String? value) => setField<String>('caixa', value);

  String? get desconto => getField<String>('desconto');
  set desconto(String? value) => setField<String>('desconto', value);

  String? get acrescimo => getField<String>('acrescimo');
  set acrescimo(String? value) => setField<String>('acrescimo', value);

  String? get campo02 => getField<String>('campo02');
  set campo02(String? value) => setField<String>('campo02', value);

  String? get campo03 => getField<String>('campo03');
  set campo03(String? value) => setField<String>('campo03', value);

  String? get campo04 => getField<String>('campo04');
  set campo04(String? value) => setField<String>('campo04', value);

  String? get campo05 => getField<String>('campo05');
  set campo05(String? value) => setField<String>('campo05', value);

  String? get campo06 => getField<String>('campo06');
  set campo06(String? value) => setField<String>('campo06', value);

  String? get campo07 => getField<String>('campo07');
  set campo07(String? value) => setField<String>('campo07', value);

  String? get campo08 => getField<String>('campo08');
  set campo08(String? value) => setField<String>('campo08', value);

  String? get campo09 => getField<String>('campo09');
  set campo09(String? value) => setField<String>('campo09', value);

  String? get campo10 => getField<String>('campo10');
  set campo10(String? value) => setField<String>('campo10', value);

  String? get midiax => getField<String>('midiax');
  set midiax(String? value) => setField<String>('midiax', value);

  String? get ifood => getField<String>('ifood');
  set ifood(String? value) => setField<String>('ifood', value);

  String? get ifod => getField<String>('ifod');
  set ifod(String? value) => setField<String>('ifod', value);

  String? get hrentrega => getField<String>('hrentrega');
  set hrentrega(String? value) => setField<String>('hrentrega', value);

  String? get hrentregue => getField<String>('hrentregue');
  set hrentregue(String? value) => setField<String>('hrentregue', value);

  String? get ljorig => getField<String>('ljorig');
  set ljorig(String? value) => setField<String>('ljorig', value);

  String? get numorig => getField<String>('numorig');
  set numorig(String? value) => setField<String>('numorig', value);

  String? get cartao => getField<String>('cartao');
  set cartao(String? value) => setField<String>('cartao', value);

  String? get consignadooriginal => getField<String>('consignadooriginal');
  set consignadooriginal(String? value) =>
      setField<String>('consignadooriginal', value);

  String? get finalField => getField<String>('final');
  set finalField(String? value) => setField<String>('final', value);

  String? get registrofac => getField<String>('registrofac');
  set registrofac(String? value) => setField<String>('registrofac', value);

  String? get tempoentrega => getField<String>('tempoentrega');
  set tempoentrega(String? value) => setField<String>('tempoentrega', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get taxa => getField<String>('taxa');
  set taxa(String? value) => setField<String>('taxa', value);

  String? get lj => getField<String>('lj');
  set lj(String? value) => setField<String>('lj', value);

  int? get observacao => getField<int>('observacao');
  set observacao(int? value) => setField<int>('observacao', value);

  int? get localizacao => getField<int>('localizacao');
  set localizacao(int? value) => setField<int>('localizacao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
