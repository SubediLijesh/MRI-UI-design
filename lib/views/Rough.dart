import 'package:flutter/material.dart';
import 'package:mri/extension/app_color.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AvailableTumor extends StatefulWidget {
  const AvailableTumor({super.key});

  @override
  State<AvailableTumor> createState() => _AvailableTumorState();
}

class _AvailableTumorState extends State<AvailableTumor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        leading: const Icon(
          FontAwesomeIcons.brain,
        ),
        title: Text(
          'Available Tumor',
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: color,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTileWidget(
                  title: 'Neurocytoma',
                  description:
                      "Central neurocytomas are generally noncancerous (benign) brain tumors in the ventricles, which are the fluid-filled spaces within the brain."),
              ExpansionTileWidget(
                  title: 'Tuberculoma',
                  description:
                      "Tuberculomas or tuberculous granulomas are well defined focal masses that result from Mycobacterium tuberculosis infection and are one of the more severe morphological forms of tuberculosis"),
              ExpansionTileWidget(
                  title: 'Schwannoma',
                  description:
                      "Schwannoma is a rare type of tumor that forms in the nervous system. Schwannoma grows from cells called Schwann cells. Schwann cells protect and support the nerve cells of the nervous system. Schwannoma tumors are often benign, which means they are not cancer. But, in rare cases, they can become cancer."),
              ExpansionTileWidget(
                  title: 'Papilloma',
                  description:
                      "A papilloma (plural papillomas or papillomata) (papillo- + -oma) is a benign epithelial tumor growing exophytically (outwardly projecting) in nipple-like and often finger-like fronds. In this context, papilla refers to the projection created by the tumor, not a tumor on an already existing papilla (such as the nipple)."),
              ExpansionTileWidget(
                  title: 'Meningioma',
                  description:
                      "Meningioma is the most common type of primary brain tumor, accounting for approximately 30 percent of all brain tumors."),
              ExpansionTileWidget(
                  title: 'Oligodendroglioma',
                  description:
                      "Oligodendroglioma is a growth of cells that starts in the brain.These cells make a substance that protects nerve cells and helps with the flow of electrical signals in the brain and spinal cord."),
              ExpansionTileWidget(
                  title: 'Meduloblastoma',
                  description:
                      "Medulloblastoma is a primary central nervous system (CNS) tumor. This means it begins in the brain or spinal cord."),
              ExpansionTileWidget(
                  title: 'Granuloma',
                  description:
                      "A granuloma is a tiny cluster of white blood cells and other tissue. It can appear in your lungs, skin or other parts of your body. "),
              ExpansionTileWidget(
                  title: 'Glioblastoma',
                  description:
                      "Glioblastoma is the most common primary brain cancer, or cancer that starts in the brain, with around 12,000 cases diagnosed in the United States each year"),
              ExpansionTileWidget(
                  title: 'Germinoma',
                  description:
                      "Germinomas are rare tumors that primarily occur in children and adolescents. These tumors arise from germ cells, which normally become eggs or sperm after migrating to the ovaries or testes during fetal development"),
              ExpansionTileWidget(
                  title: 'Ependimoma',
                  description:
                      "An ependymoma is a primary central nervous system (CNS) tumor. This means it begins in the brain or spinal cord. To get an accurate diagnosis, a piece of tumor tissue will be removed during surgery, if possible"),
              ExpansionTileWidget(
                  title: 'Ganglioglioma',
                  description:
                      " A ganglioglioma is low-grade tumor of mixed cell type. It is very rare and contains properties of both glial cells — responsible for providing the structural support of the central nervous system, and neuronal cells — the functioning component of the central nervous system."),
              ExpansionTileWidget(
                  title: 'Carcinoma',
                  description:
                      "Specifically, a carcinoma is a cancer that begins in a tissue that lines the inner or outer surfaces of the body, and that arises from cells originating in the endodermal, mesodermal or ectodermal germ layer during embryogenesis. Carcinoma"),
              ExpansionTileWidget(
                  title: 'Astrocitoma',
                  description:
                      "Astrocytoma is a type of cancer that can occur in the brain or spinal cord. It begins in cells called astrocytes that support nerve cells."),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpansionTileWidget extends StatelessWidget {
  ExpansionTileWidget(
      {super.key, required this.title, required this.description});

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            ListTile(
              title: Text(
                description,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.7),
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
