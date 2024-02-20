import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // ipadpro12921cWy (0:816)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(30*fem, 25.5*fem, 30*fem, 78*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffffffff),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/union-VvD.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupdyudGLd (NvSVxdj5Zs3GuduN2EDYUD)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 616.5*fem, 44.5*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // union13K (0:831)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 593.89*fem, 0*fem),
                      width: 20.61*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/page-1/images/union-rnZ.png',
                        width: 20.61*fem,
                        height: 40*fem,
                      ),
                    ),
                    Center(
                      // chestvg5 (0:823)
                      child: Text(
                        'Chest',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Wanted Sans Variable',
                          fontSize: 30*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group21TAD (0:824)
                margin: EdgeInsets.fromLTRB(25.5*fem, 0*fem, 0*fem, 46*fem),
                width: 621.5*fem,
                height: 692.5*fem,
                child: Image.asset(
                  'assets/page-1/images/group-21.png',
                  width: 621.5*fem,
                  height: 692.5*fem,
                ),
              ),
              Container(
                // group22xcm (0:834)
                margin: EdgeInsets.fromLTRB(605*fem, 0*fem, 604*fem, 0*fem),
                width: double.infinity,
                decoration: const BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/page-1/images/ellipse-41.png',
                    ),
                  ),
                ),
                child: Center(
                  // ellipse405hP (0:836)
                  child: SizedBox(
                    width: 97*fem,
                    height: 97*fem,
                    child: Image.asset(
                      'assets/page-1/images/ellipse-40.png',
                      width: 97*fem,
                      height: 97*fem,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}