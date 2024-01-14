import '../models/word.dart';
final List<Word> words=[
  Word(topic: 'Maths', chapterName: 'Probability', Name: 'Probability', formula:  r'P(A) = \frac{\text{{Number of favorable outcomes}}}{\text{{Total number of outcomes}}}'),
  Word(topic: 'Maths', chapterName: 'Probability', Name: 'Bayes Theorem', formula: r'P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}'),
  Word(topic: 'Maths', chapterName: 'Probability', Name: 'Union of Two Events', formula:  r'P(A \cup B) = P(A) + P(B) - P(A \cap B)'),
  Word(
  topic: 'Maths',
  chapterName: 'Probability',
  Name: 'Complement of an Event',
  formula: r"P(A') = 1 - P(A)",
),

  Word(topic: 'Maths', chapterName: 'Probability', Name: 'Mutually Exclusive Events', formula:r'P(A \cap B) = 0'),
  Word(
    topic: 'Maths',
    chapterName: 'Integration',
    Name: 'Integration By Parts',
    formula: r'\int u \, dv = uv - \int v \, du',
  ),
  Word(
    topic: 'Maths',
    chapterName: 'Integration',
    Name: 'Integration of sin(x)',
    formula: r'\int \sin(x) \, dx = -\cos(x) + C',
  ),
  Word(
    topic: 'Maths',
    chapterName: 'Integration',
    Name: 'Integration of cos(x)',
    formula: r'\int \cos(x) \, dx = \sin(x) + C',
  ),
  Word(
    topic: 'Maths',
    chapterName: 'Integration',
    Name: 'Integration of tan(x)',
    formula: r'\int \tan(x) \, dx = -\ln|\cos(x)| + C',
  ),
  Word(
    topic: 'Maths',
    chapterName: 'Integration',
    Name: 'Integration of 1/x',
    formula: r'\int \frac{1}{x} \, dx = \ln|x| + C',
  ),
  Word(
    topic: 'Maths',
    chapterName: 'Integration',
    Name: 'Integration of e^x',
    formula: r'\int e^x \, dx = e^x + C',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Motion',
    Name: 'Speed',
    formula: r'\text{Speed} = \frac{\Delta s}{\Delta t}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Motion',
    Name: 'Velocity',
    formula: r'\text{Velocity} = \frac{\Delta x}{\Delta t}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Motion',
    Name: 'Average Speed',
    formula: r'\text{Average Speed} = \frac{\text{Total Distance}}{\text{Total Time}}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Motion',
    Name: 'Equation of Motion',
    formula: r'v = u + at',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Motion',
    Name: 'Centripetal Motion',
    formula: r'a_c = \frac{v^2}{r}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Motion',
    Name: 'Acceleration',
    formula: r'a = \frac{\Delta v}{\Delta t}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Modern Physics',
    Name: 'de Broglie Wavelength',
    formula: r'\lambda = \frac{h}{p}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Modern Physics',
    Name: 'Nuclear Radius',
    formula: r'R = R_0 \cdot A^{1/3}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Modern Physics ',
    Name: 'Atomic Size',
    formula: r'r = \frac{n^2 \cdot h^2}{4 \pi^2 \cdot Z \cdot e^2 \cdot m_e \cdot k_e^2}',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Modern Physics',
    Name: "Einstein's Mass-Energy Equivalence",
    formula: r'E = mc^2',
  ),
  Word(
    topic: 'Physics',
    chapterName: 'Modern Physics',
    Name: "Heisenberg's Uncertainty Principle",
    formula: r'\Delta x \cdot \Delta p \geq \frac{\hbar}{2}',
  ),
  
  Word(
    topic: 'Chemistry',
    chapterName: 'Chemical Kinetics',
    Name: 'Rate Law',
    formula: 'Rate = k[A]^m[B]^n',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Chemical Kinetics',
    Name: 'Half-Life',
    formula: 't_{1/2} = 0.693 / k',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Chemical Kinetics',
    Name: 'Activation Energy',
    formula: 'k = A * e^(-Eₐ/RT)',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Chemical Kinetics',
    Name: 'Second-Order Reaction Half-Life',
    formula: 't_{1/2} = \\frac{1}{k[A]_0}',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Chemical Kinetics',
    Name: 'Reaction Rate',
    formula: 'Rate = -1/a * d[A]/dt = 1/b * d[B]/dt = ...',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Thermodynamics',
    Name: 'First Law of Thermodynamics',
    formula: r'\Delta U = q + w',
  ),
  
  Word(
    topic: 'Chemistry',
    chapterName: 'Thermodynamics',
    Name: 'Enthalpy (H)',
    formula: 'H = U + PV',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Thermodynamics',
    Name: 'Gibbs Free Energy (G)',
    formula: 'G = H - TS',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Thermodynamics',
    Name: 'Heat Capacity (C)',
    formula: 'Q = mC\Delta T',
  ),
  Word(
    topic: 'Chemistry',
    chapterName: 'Thermodynamics',
    Name: 'Ideal Gas Law',
    formula: 'PV = nRT',
  ),

];