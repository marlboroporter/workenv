# Mortgage

## Calculator
* [numpy-financial](https://numpy.org/numpy-financial/latest/pmt.html)

```bash
python
>>> import numpy_financial as npf
>>> npf.pmt(0.075/12, 12*15, 200000)
-1854.0247200054619
>>> npf.pmt(0.075/12, 12*15, 500000)
-4635.061800013655
>>> npf.pmt(0.03/12, 12*15, 500000)
-3452.908201390009
>>> npf.pmt(0.03/12, 12*15, 500000)*12
-41434.89841668011
```