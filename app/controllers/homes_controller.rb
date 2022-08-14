class HomesController < ApplicationController
  def top
    @pc = Pc.new

    @cpu = Cpu.new
    @cpu_cooler = CpuCooler.new
    @motherboard = Motherboard.new
    @memory = Memory.new
    @storage = Storage.new
    @drive = Drive.new
    @videocard = Videocard.new
    @power = Power.new
    @case = Case.new
    @case = Case.new
    @fan = Fan.new
    @system = System.new
    @other = Other.new
  end
end
