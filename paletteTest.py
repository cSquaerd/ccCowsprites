colorCodesFG = sorted(
	[t + o for t in (30, 90) for o in range(8)],
	key = lambda n : str(n)[-1]
)
colorCodesBG = sorted(
	[t + o for t in (40, 100) for o in range(8)],
	key = lambda n : str(n)[-1]
)
esc = "\x1B["

for b in colorCodesBG:
	for f in colorCodesFG:
		print(
			esc, f, 'm', esc, b, "m\u2580\u2584 ", esc, "0m",
			sep = '', end = '' if f < 97 else '\n'
		)

