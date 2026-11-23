resource "aws_instance" "projectinstanceref" {
  ami           =  "ami-0fc7005aa213e82fa"
  instance_type = "m7i-flex.large"
  count         = 2
  key_name     = aws_key_pair.projectkeypair.key_name

  root_block_device {
   delete_on_termination = true
    volume_size = 24
    volume_type = "gp3"
  }

  tags = {
    Name = "nexus"
  }
}

resource "aws_key_pair" "projectkeypair" {
  key_name   = "nexus_key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGMl/mfuoiShKQrW0N3WQndf5JVT7cZ4YMZayjSR8/jf dell@DESKTOP-HPV3NDD"
  
}