# 重新复述一下我们要做的事情，使用xinput指令找到对应的设备序号
# 禁用该设备，你可以把执行指令这条指令加到/etc/profile.d/your_script.sh里

# 声明我们用哪个版本的Perl
use 5.20.1;
# 启用了 strict 和 warnings
use strict;
use warnings;



# xinput | grep "NTR" | grep -P "(?<=id=)[0-9]{1,2}" -o
# 首先先解释一下这条指令
# xinput会获取设备序列，后面匹配到对应的序号
# grep 的-p是为了使用指定版本的正则表达式 -o是为了只输出匹配结果

# 你可以用这种方式执行shell指令,由于我们需要返回值,我们采取的是下面那种方法
# system("xinput | grep "NTR" | grep -P "(?<=id=)[1-9]{1,2}" -o");
# system("ls", "-a", "-l");

my $match_str = qx/xinput | grep "NTR" | grep -P "(?<=id=)[0-9]{1,2}" -o/;
# 基本标量切割成数组
my @id_list = split("\n", $match_str);

foreach my $id (@id_list) {
  disable_id($id)
}

sub disable_id {
  my $id = $_[0];
  # 禁用
  # xinput set-prop 12 "Device Enabled" 0
  system('xinput', 'set-prop', $id, 'Device Enabled','0');
  return;
}
