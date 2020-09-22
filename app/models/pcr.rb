class Pcr < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # dateが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      pcr = find_by(id: row["date"]) || new
      # CSVからデータを取得し、設定する
      pcr.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      pcr.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["date", "tested", "positive"]
  end
end
