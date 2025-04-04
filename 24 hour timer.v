module timer (input clk,
              input rst,
              output reg[7:0] sec,min,hour);
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      sec<=0;min<=0;hour<=0;
    end
    else begin
      if(sec==8'd59) begin
        sec<=0;
        if(min==8'd59) begin
          min<=0;
          if(hour==8'd23) begin
            hour<=0;
          end
          else begin
            hour=hour+1;
          end
        end
          else begin
            min=min+1;
          end
        end
        else begin
          sec<=sec+1;
        end
      end
    end
    endmodule
