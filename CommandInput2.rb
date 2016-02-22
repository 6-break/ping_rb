
# IPアドレス情報クラス
class IpInfo
  # 初期化
  def initialize(dst_ip)
  @dst_ip = dst_ip
  end

  # アクセサ
  attr_accessor :dst_ip

  # 文字表現を返すメソッド
  def to_s
   "#{@dst_ip}"
  end
  
  # コマンド出力フォーマット
  def toFormattedCommand
    "#{@dst_ip}"
  end
  
 end

# コマンド実行クラス
class RunCommand
  
  # IPアドレスの登録、実行  
  def addipaddr
  # IPアドレス情報のインスタンス
  @ip_info = IpInfo.new("")
  
  # 登録するIPアドレス入力
   print "\n"
   print "宛先IPアドレス: "
   @ip_info.dst_ip = gets.chomp.to_s 
  end

  # 入力されたIPアドレスをコマンドに代入して実行
  def run
  exec("ping " + @ip_info.dst_ip)
   begin
   rescue
    puts "error"
   end
  end
  
end

# インスタンスnew
run_command = RunCommand.new

# IPアドレス入力画面処理
run_command.addipaddr

# コマンド実行
run_command.run

