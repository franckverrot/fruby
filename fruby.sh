git checkout -- mrblib mrbgems src
make clean

for kw in\
	__ENCODING__,__ENCODING__\
	__FILE__,__FILE__\
	__LINE__,__LINE__\
	BEGIN,BEGIN\
	END,END\
	alias,renomme\
	and,et\
	begin,debut\
	break,termine\
	case,selon\
	class,classe\
	def,défini\
	do,faire\
	else,sinon\
	elsif,sinonsi\
	end,fin\
	ensure,assure\
	false,faux\
	for,pour\
	if,si\
	in,dans\
	module,module\
	next,suivant\
	nil,rien\
	not,non\
	or,ou\
	redo,refaire\
	rescue,sauve\
	retry,recommence\
	return,retourne\
	self,mon\
	super,maman\
	then,alors\
	true,vrai\
	undef,indéfini\
	unless,saufsi\
	until,jusqua\
	when,quand\
	while,tantque\
	yield,donne
do
  OLDIFS=$IFS;
  IFS=","
  set $kw
  old=$1
  new=$2
  IFS=$OLDIFS
  sed -i "s/\<$old\>/$new/g" src/keywords
  for file in `find mrb* -type f -iname "*.rb"`
  do
    echo "Altering $file with $old $new"
    sed -i "s/\<$old\>/$new/g" $file
  done
done


make
mv bin/mruby fruby
