import '../database.dart';

class ClientesTable extends SupabaseTable<ClientesRow> {
  @override
  String get tableName => 'clientes';

  @override
  ClientesRow createRow(Map<String, dynamic> data) => ClientesRow(data);
}

class ClientesRow extends SupabaseDataRow {
  ClientesRow(super.data);

  @override
  SupabaseTable get table => ClientesTable();

  int get codigo => getField<int>('codigo')!;
  set codigo(int value) => setField<int>('codigo', value);

  String? get pessoa => getField<String>('pessoa');
  set pessoa(String? value) => setField<String>('pessoa', value);

  String? get rg => getField<String>('rg');
  set rg(String? value) => setField<String>('rg', value);

  String? get insc => getField<String>('insc');
  set insc(String? value) => setField<String>('insc', value);

  String? get razao => getField<String>('razao');
  set razao(String? value) => setField<String>('razao', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get ende => getField<String>('ende');
  set ende(String? value) => setField<String>('ende', value);

  String? get setor => getField<String>('setor');
  set setor(String? value) => setField<String>('setor', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get cgc => getField<String>('cgc');
  set cgc(String? value) => setField<String>('cgc', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get fone => getField<String>('fone');
  set fone(String? value) => setField<String>('fone', value);

  String? get fax => getField<String>('fax');
  set fax(String? value) => setField<String>('fax', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  String? get nasc => getField<String>('nasc');
  set nasc(String? value) => setField<String>('nasc', value);

  String? get pai => getField<String>('pai');
  set pai(String? value) => setField<String>('pai', value);

  String? get mae => getField<String>('mae');
  set mae(String? value) => setField<String>('mae', value);

  String? get sexox => getField<String>('sexox');
  set sexox(String? value) => setField<String>('sexox', value);

  String? get imuni => getField<String>('imuni');
  set imuni(String? value) => setField<String>('imuni', value);

  String? get transporte => getField<String>('transporte');
  set transporte(String? value) => setField<String>('transporte', value);

  String? get nomeso => getField<String>('nomeso');
  set nomeso(String? value) => setField<String>('nomeso', value);

  String? get endso => getField<String>('endso');
  set endso(String? value) => setField<String>('endso', value);

  String? get setorso => getField<String>('setorso');
  set setorso(String? value) => setField<String>('setorso', value);

  String? get cidadeso => getField<String>('cidadeso');
  set cidadeso(String? value) => setField<String>('cidadeso', value);

  String? get foneso => getField<String>('foneso');
  set foneso(String? value) => setField<String>('foneso', value);

  String? get celso => getField<String>('celso');
  set celso(String? value) => setField<String>('celso', value);

  String? get ufso => getField<String>('ufso');
  set ufso(String? value) => setField<String>('ufso', value);

  String? get cepso => getField<String>('cepso');
  set cepso(String? value) => setField<String>('cepso', value);

  String? get cpfso => getField<String>('cpfso');
  set cpfso(String? value) => setField<String>('cpfso', value);

  String? get rgso => getField<String>('rgso');
  set rgso(String? value) => setField<String>('rgso', value);

  String? get nomep => getField<String>('nomep');
  set nomep(String? value) => setField<String>('nomep', value);

  String? get cpfp => getField<String>('cpfp');
  set cpfp(String? value) => setField<String>('cpfp', value);

  String? get rgp => getField<String>('rgp');
  set rgp(String? value) => setField<String>('rgp', value);

  String? get endp => getField<String>('endp');
  set endp(String? value) => setField<String>('endp', value);

  String? get setp => getField<String>('setp');
  set setp(String? value) => setField<String>('setp', value);

  String? get cidp => getField<String>('cidp');
  set cidp(String? value) => setField<String>('cidp', value);

  String? get ufp => getField<String>('ufp');
  set ufp(String? value) => setField<String>('ufp', value);

  String? get fonep => getField<String>('fonep');
  set fonep(String? value) => setField<String>('fonep', value);

  String? get celp => getField<String>('celp');
  set celp(String? value) => setField<String>('celp', value);

  String? get nome1 => getField<String>('nome1');
  set nome1(String? value) => setField<String>('nome1', value);

  String? get nome2 => getField<String>('nome2');
  set nome2(String? value) => setField<String>('nome2', value);

  String? get nome3 => getField<String>('nome3');
  set nome3(String? value) => setField<String>('nome3', value);

  String? get fone1 => getField<String>('fone1');
  set fone1(String? value) => setField<String>('fone1', value);

  String? get fone2 => getField<String>('fone2');
  set fone2(String? value) => setField<String>('fone2', value);

  String? get fone3 => getField<String>('fone3');
  set fone3(String? value) => setField<String>('fone3', value);

  String? get refc1 => getField<String>('refc1');
  set refc1(String? value) => setField<String>('refc1', value);

  String? get refc2 => getField<String>('refc2');
  set refc2(String? value) => setField<String>('refc2', value);

  String? get refc3 => getField<String>('refc3');
  set refc3(String? value) => setField<String>('refc3', value);

  String? get telc1 => getField<String>('telc1');
  set telc1(String? value) => setField<String>('telc1', value);

  String? get telc2 => getField<String>('telc2');
  set telc2(String? value) => setField<String>('telc2', value);

  String? get telc3 => getField<String>('telc3');
  set telc3(String? value) => setField<String>('telc3', value);

  String? get banco1 => getField<String>('banco1');
  set banco1(String? value) => setField<String>('banco1', value);

  String? get banco2 => getField<String>('banco2');
  set banco2(String? value) => setField<String>('banco2', value);

  String? get ag1 => getField<String>('ag1');
  set ag1(String? value) => setField<String>('ag1', value);

  String? get ag2 => getField<String>('ag2');
  set ag2(String? value) => setField<String>('ag2', value);

  String? get ger1 => getField<String>('ger1');
  set ger1(String? value) => setField<String>('ger1', value);

  String? get ger2 => getField<String>('ger2');
  set ger2(String? value) => setField<String>('ger2', value);

  String? get foneb1 => getField<String>('foneb1');
  set foneb1(String? value) => setField<String>('foneb1', value);

  String? get foneb2 => getField<String>('foneb2');
  set foneb2(String? value) => setField<String>('foneb2', value);

  String? get limiti => getField<String>('limiti');
  set limiti(String? value) => setField<String>('limiti', value);

  String? get fonetrans => getField<String>('fonetrans');
  set fonetrans(String? value) => setField<String>('fonetrans', value);

  String? get cepp => getField<String>('cepp');
  set cepp(String? value) => setField<String>('cepp', value);

  String? get orgao => getField<String>('orgao');
  set orgao(String? value) => setField<String>('orgao', value);

  String? get via => getField<String>('via');
  set via(String? value) => setField<String>('via', value);

  String? get iestad => getField<String>('iestad');
  set iestad(String? value) => setField<String>('iestad', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get celcli => getField<String>('celcli');
  set celcli(String? value) => setField<String>('celcli', value);

  String? get orgaos => getField<String>('orgaos');
  set orgaos(String? value) => setField<String>('orgaos', value);

  String? get orgaop => getField<String>('orgaop');
  set orgaop(String? value) => setField<String>('orgaop', value);

  String? get vias => getField<String>('vias');
  set vias(String? value) => setField<String>('vias', value);

  String? get viap => getField<String>('viap');
  set viap(String? value) => setField<String>('viap', value);

  String? get mail => getField<String>('mail');
  set mail(String? value) => setField<String>('mail', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get dataalteracao => getField<String>('dataalteracao');
  set dataalteracao(String? value) => setField<String>('dataalteracao', value);

  String? get restricao => getField<String>('restricao');
  set restricao(String? value) => setField<String>('restricao', value);

  String? get codmun => getField<String>('codmun');
  set codmun(String? value) => setField<String>('codmun', value);

  String? get transok => getField<String>('transok');
  set transok(String? value) => setField<String>('transok', value);

  String? get loja => getField<String>('loja');
  set loja(String? value) => setField<String>('loja', value);

  String? get convenio => getField<String>('convenio');
  set convenio(String? value) => setField<String>('convenio', value);

  String? get natu => getField<String>('natu');
  set natu(String? value) => setField<String>('natu', value);

  String? get credito => getField<String>('credito');
  set credito(String? value) => setField<String>('credito', value);

  String? get funcaox => getField<String>('funcaox');
  set funcaox(String? value) => setField<String>('funcaox', value);

  String? get salariox => getField<String>('salariox');
  set salariox(String? value) => setField<String>('salariox', value);

  String? get patraox => getField<String>('patraox');
  set patraox(String? value) => setField<String>('patraox', value);

  String? get turmax => getField<String>('turmax');
  set turmax(String? value) => setField<String>('turmax', value);

  String? get salax => getField<String>('salax');
  set salax(String? value) => setField<String>('salax', value);

  String? get qd => getField<String>('qd');
  set qd(String? value) => setField<String>('qd', value);

  String? get lt => getField<String>('lt');
  set lt(String? value) => setField<String>('lt', value);

  String? get cs => getField<String>('cs');
  set cs(String? value) => setField<String>('cs', value);

  String? get cartao => getField<String>('cartao');
  set cartao(String? value) => setField<String>('cartao', value);

  String? get cartaoativo => getField<String>('cartaoativo');
  set cartaoativo(String? value) => setField<String>('cartaoativo', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get qtdcompras => getField<String>('qtdcompras');
  set qtdcompras(String? value) => setField<String>('qtdcompras', value);

  String? get pricompra => getField<String>('pricompra');
  set pricompra(String? value) => setField<String>('pricompra', value);

  String? get ultcompra => getField<String>('ultcompra');
  set ultcompra(String? value) => setField<String>('ultcompra', value);

  String? get fidelidade => getField<String>('fidelidade');
  set fidelidade(String? value) => setField<String>('fidelidade', value);

  String? get dtreg => getField<String>('dtreg');
  set dtreg(String? value) => setField<String>('dtreg', value);

  String? get ativ => getField<String>('ativ');
  set ativ(String? value) => setField<String>('ativ', value);

  String? get obs2 => getField<String>('obs2');
  set obs2(String? value) => setField<String>('obs2', value);

  String? get dtaltreg => getField<String>('dtaltreg');
  set dtaltreg(String? value) => setField<String>('dtaltreg', value);

  String? get formapag => getField<String>('formapag');
  set formapag(String? value) => setField<String>('formapag', value);

  String? get tipopag => getField<String>('tipopag');
  set tipopag(String? value) => setField<String>('tipopag', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get ultModificacao => getField<DateTime>('UltModificacao');
  set ultModificacao(DateTime? value) =>
      setField<DateTime>('UltModificacao', value);
}
