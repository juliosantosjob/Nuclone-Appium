class Actions
  def initialize
    @icone_nuclone = "//android.widget.ImageView"
    @header = "//android.widget.TextView[@content-desc='top-header']"
    @card = "card-hero"
    @balance_available = "//*[@text='Saldo disponível']"
    @txt_transfer_received = "//*[@text='Transferencia de R$ 5.000 recebida do Tony Stark hoje as 09:00h']"
    @btn_refer_friends = "//*[@text='Indicar amigos']"
    @btn_demand = "//*[@text='Cobrar']"
    @btn_deposit = "//*[@text='Depositar']"
    @btn_trasfer = "//*[@text='Transferir']"
    @btn_pay = "//*[@text='Pagar']"
    @btn_block_card = "//*[@text='Bloquear cartão']"
    @btn_virtual_card = "//*[@text='Cartão virtual']"
    @see_balance = "//android.view.ViewGroup[@content-desc='show-balance']/android.widget.TextView"
    @value_balance = "user-balance"
  end

  def acess_app
    find_element(xpath: @icone_nuclone)
    find_element(xpath: @header).all(class: "android.widget.TextView").text("Papito")
  end

  def home_validation
    find_element(accessibility_id: @card).all(class: "android.widget.TextView").text("NuConta")
    find_element(xpath: @balance_available)
    find_element(xpath: @txt_transfer_received)
    find_element(xpath: @btn_refer_friends)
    find_element(xpath: @btn_demand)
    find_element(xpath: @btn_deposit)

    coord = { start_x: 380, start_y: 1867, offset_x: 73, offset_y: 1867, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform

    find_element(xpath: @btn_trasfer)

    coord = { start_x: 1039, start_y: 1867, offset_x: 73, offset_y: 1867, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform

    find_element(xpath: @btn_pay)
    find_element(xpath: @btn_block_card)
    find_element(xpath: @btn_virtual_card)
  end

  def click_see_balance
    find_element(xpath: @see_balance).click
  end

  def method_name
    return find_element(accessibility_id: @value_balance)
  end
end
