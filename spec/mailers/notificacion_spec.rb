require "spec_helper"

describe Notificacion do
  describe "contacto" do
    let(:mail) { Notificacion.contacto }

    it "renders the headers" do
      mail.subject.should eq("Contacto")
      mail.to.should eq(["aleasam@gmail.com"])
      mail.from.should eq(["informacion000@gmail.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hola tiene solicitudes")
    end
  end

end
