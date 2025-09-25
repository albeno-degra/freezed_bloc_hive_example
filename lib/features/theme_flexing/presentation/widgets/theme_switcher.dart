import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_bloc_example/app/common/presentation/colors_and_styles/app_colors.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/border_radiuses.dart';
import 'package:freezed_bloc_example/app/common/presentation/theme_extensions/paddings.dart';
import 'package:freezed_bloc_example/features/theme_flexing/presentation/cubit/theme_flexing_cubit.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeFlexingCubit, ThemeFlexingState>(
      buildWhen: (p, c) => c.isLight != null && p.isLight != c.isLight,
      builder: (context, state) {
        final isLight = state.isLight!;

        return Container(
          padding: context.padding16,
          decoration: BoxDecoration(
            color: context.uiColors?.buttonBackground,
            borderRadius: context.borderRadius16,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(25),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Theme: ', style: TextStyle(fontSize: 16)),
              SimpleThemeSwitch(
                isLight: isLight,
                onTap: () => context.read<ThemeFlexingCubit>().toggleTheme(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SimpleThemeSwitch extends StatefulWidget {
  const SimpleThemeSwitch({
    required this.isLight,
    required this.onTap,
    super.key,
  });
  final bool isLight;
  final VoidCallback onTap;

  @override
  State<SimpleThemeSwitch> createState() => _SimpleThemeSwitchState();
}

class _SimpleThemeSwitchState extends State<SimpleThemeSwitch>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      value: widget.isLight ? 0 : 1,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void didUpdateWidget(covariant SimpleThemeSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isLight != widget.isLight) {
      widget.isLight ? _controller.reverse() : _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = context.uiColors?.switchBackground;

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: 60,
            height: 30,
            padding: context.padding4,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.lerp(
                Alignment.centerLeft,
                Alignment.centerRight,
                _animation.value,
              )!,
              child: Icon(
                _animation.value < 0.5 ? Icons.wb_sunny : Icons.nights_stay,
                color: Colors.white,
                size: 16,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
