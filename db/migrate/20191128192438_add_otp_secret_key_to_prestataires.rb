class AddOtpSecretKeyToPrestataires < ActiveRecord::Migration[6.0]
  def change
    add_column :prestataires, :otp_secret_key, :string
  end
end
