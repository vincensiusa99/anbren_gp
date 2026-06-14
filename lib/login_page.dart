import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const _backgroundAsset = 'assets/pecco-unsplash.jpg';
  static const _logoAsset = 'assets/disco-ball.png';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(LoginPage._backgroundAsset, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(color: const Color.fromRGBO(255, 255, 255, 0.30)),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: SizedBox(
              width: 120.91,
              height: 46,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.15),
                      Color.fromRGBO(0, 0, 0, 0.25),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.098),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                      spreadRadius: -4,
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.098),
                      blurRadius: 15,
                      offset: Offset(0, 10),
                      spreadRadius: -3,
                    ),
                  ],
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 16,
                        height: 16,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Dark Mode',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'SFPRODISPLAYMEDIUM',
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      const SizedBox(height: 16),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(bottom: bottomInset + 16),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight - 32,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 420,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: ShapeDecoration(
                                        color: const Color.fromRGBO(
                                          226,
                                          226,
                                          226,
                                          0.498,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            34,
                                          ),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                              0,
                                              0,
                                              0,
                                              0.098,
                                            ),
                                            blurRadius: 32,
                                            offset: Offset(0, 8),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 32,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 59,
                                                    decoration:
                                                        const BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage(
                                                              LoginPage
                                                                  ._logoAsset,
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                    alignment: Alignment.center,
                                                    child: FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'anbren',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 11,
                                                              fontFamily:
                                                                  'MGPDisplay',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'gp',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 11,
                                                              fontFamily:
                                                                  'MGPInline',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  const Text(
                                                    'Welcome to ANBRENGP',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                        16,
                                                        24,
                                                        40,
                                                        1,
                                                      ),
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'SFPRODISPLAYBOLD',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.33,
                                                      letterSpacing: -0.60,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  const Text(
                                                    'Your ultimate MotoGP news & stats companion',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.visible,
                                                    softWrap: false,
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                        54,
                                                        65,
                                                        83,
                                                        1,
                                                      ),
                                                      fontSize: 14,
                                                      fontFamily:
                                                          'SFPRODISPLAYREGULAR',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 35),
                                            Form(
                                              key: _formKey,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  _LoginField(
                                                    icon: Icons.email,
                                                    hintText: 'Email address',
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Required';
                                                      }
                                                      final emailRegex = RegExp(
                                                        r"^[^@\s]+@[^@\s]+\.[^@\s]+$",
                                                      );
                                                      if (!emailRegex.hasMatch(
                                                        value,
                                                      )) {
                                                        return 'Invalid email address';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  const SizedBox(height: 20),
                                                  _LoginField(
                                                    icon: Icons.lock,
                                                    hintText: 'Password',
                                                    obscureText: true,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Required';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  const SizedBox(height: 20),
                                                  const _RememberRow(),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 30),
                                            SizedBox(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                onPressed: null,
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStateProperty.resolveWith<
                                                        Color
                                                      >((states) {
                                                        if (states.contains(
                                                          WidgetState.disabled,
                                                        )) {
                                                          return const Color.fromRGBO(
                                                            231,
                                                            0,
                                                            11,
                                                            1,
                                                          );
                                                        }
                                                        if (states.contains(
                                                          WidgetState.pressed,
                                                        )) {
                                                          return const Color.fromRGBO(
                                                            255,
                                                            102,
                                                            102,
                                                            1,
                                                          );
                                                        }
                                                        return const Color.fromRGBO(
                                                          231,
                                                          0,
                                                          11,
                                                          1,
                                                        );
                                                      }),
                                                  foregroundColor:
                                                      WidgetStateProperty.all(
                                                        Colors.white,
                                                      ),
                                                  overlayColor:
                                                      WidgetStateProperty.resolveWith<
                                                        Color?
                                                      >((states) {
                                                        if (states.contains(
                                                          WidgetState.pressed,
                                                        )) {
                                                          return const Color.fromRGBO(
                                                            255,
                                                            255,
                                                            255,
                                                            0.08,
                                                          );
                                                        }
                                                        return null;
                                                      }),
                                                  padding: WidgetStateProperty.all(
                                                    const EdgeInsets.symmetric(
                                                      vertical: 14.0,
                                                    ),
                                                  ),
                                                  shape: WidgetStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            38,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: const [
                                                    Text(
                                                      'Sign In',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'SFPRODISPLAYMEDIUM',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 1.50,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Icon(Icons.login, size: 18),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 24),
                                            const _SignupRow(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginField extends StatefulWidget {
  const _LoginField({
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    this.validator,
  });

  final IconData icon;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  State<_LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<_LoginField> {
  late final FocusNode _focusNode;
  bool _showError = false;
  bool _touched = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()..addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (mounted) {
      setState(() {
        _showError = _focusNode.hasFocus || _touched;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      obscureText: widget.obscureText,
      validator: widget.validator,
      autovalidateMode: _showError
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      onChanged: (value) {
        if (!_touched) {
          setState(() {
            _touched = true;
            _showError = true;
          });
        }
      },
      style: const TextStyle(
        color: Color.fromRGBO(16, 24, 40, 1),
        fontFamily: 'SFPRODISPLAYREGULAR',
        fontSize: 16,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          color: const Color.fromRGBO(15, 15, 15, 0.5),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(15, 15, 15, 0.5),
          fontSize: 16,
          fontFamily: 'SFPRODISPLAYREGULAR',
          fontWeight: FontWeight.w400,
        ),
        errorStyle: const TextStyle(
          color: Color.fromRGBO(231, 0, 11, 1),
          fontSize: 12,
          fontFamily: 'SFPRODISPLAYREGULAR',
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color.fromRGBO(255, 255, 255, 0.50),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(34),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(255, 255, 255, 0.40),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(34),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(255, 255, 255, 0.70),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(34),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(231, 0, 11, 1),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(34),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(231, 0, 11, 1),
          ),
        ),
      ),
    );
  }
}

class _RememberRow extends StatelessWidget {
  const _RememberRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 13,
              height: 13,
              decoration: ShapeDecoration(
                color: const Color.fromRGBO(226, 226, 226, 0.498),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: Color.fromRGBO(226, 226, 226, 0.4),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 7),
            const Text(
              'Remember me',
              style: TextStyle(
                color: Color.fromRGBO(16, 24, 40, 1),
                fontSize: 16,
                fontFamily: 'SFPRODISPLAYMEDIUM',
                fontWeight: FontWeight.w500,
                height: 1.50,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color.fromRGBO(231, 0, 11, 1),
              fontSize: 14,
              fontFamily: 'SFPRODISPLAYMEDIUM',
              fontWeight: FontWeight.w500,
              height: 1.43,
            ),
          ),
        ),
      ],
    );
  }
}

class _SignupRow extends StatelessWidget {
  const _SignupRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Don`t have an account?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(54, 65, 83, 1),
            fontSize: 14,
            fontFamily: 'SFPRODISPLAYREGULAR',
            fontWeight: FontWeight.w400,
            height: 1.43,
          ),
        ),
        SizedBox(width: 3),
        Text(
          'Sign Up Now',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(231, 0, 11, 1),
            fontSize: 14,
            fontFamily: 'SFPRODISPLAYMEDIUM',
            fontWeight: FontWeight.w500,
            height: 1.43,
          ),
        ),
      ],
    );
  }
}
