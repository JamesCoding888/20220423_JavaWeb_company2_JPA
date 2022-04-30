package model;
public class porder {
	private Integer id;
	private String desk;
	private Integer A;
	private Integer B;
	private Integer C;
	private Integer D;
	private Integer E;
	private Integer F;
	private Integer sum;
	public porder() {
		super();
		// TODO Auto-generated constructor stub
	}	
	public porder(String desk, Integer a, Integer b, Integer c, Integer d, Integer e, Integer f) {
		super();
		this.desk = desk;
		A = a;
		B = b;
		C = c;
		D = d;
		E = e;
		F = f;
		this.sum = A*120+B*130+C*150+D*130+E*110+F*150;		
	}

	public String getDesk() {
		return desk;
	}
	public void setDesk(String desk) {
		this.desk = desk;
	}
	public Integer getA() {
		return A;
	}
	public void setA(Integer a) {
		A = a;
	}
	public Integer getB() {
		return B;
	}
	public void setB(Integer b) {
		B = b;
	}
	public Integer getC() {
		return C;
	}
	public void setC(Integer c) {
		C = c;
	}
	public Integer getD() {
		return D;
	}
	public void setD(Integer d) {
		D = d;
	}
	public Integer getE() {
		return E;
	}
	public void setE(Integer e) {
		E = e;
	}
	public Integer getF() {
		return F;
	}
	public void setF(Integer f) {
		F = f;
	}
	public Integer getSum() {
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
}
