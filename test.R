giotto_obj <- Giotto::loadGiotto('data/gobject/')

ONTraC_input <- Giotto::getONTraCv1Input(gobject = giotto_obj,
                                 cell_type = 'subclass',
                                 output_path = './results/ontrac',
                                 spat_unit = 'cell',
                                 feat_type = 'rna',
                                 verbose = TRUE)

Giotto::runONTraCV1(ONTraC_input = ONTraC_input,
            dataset = './results/ontrac/ONTraC_dataset_input.csv',
            preprocessing_dir = './results/ontrac/preprocessing_dir',
            GNN_dir = './results/ontrac/GNN_dir',
            NTScore_dir = './results/ontrac/NTScore_dir',
            n_neighbors = 50L,
            n_local = 20L,
            device = 'cpu',
            seed = 42L,
            k = 6L,
            modularity_loss_weight = 0.3,
            purity_loss_weight = 300.0,
            regularization_loss_weight = 0.3,
            beta = 0.03,
            epochs = 200L,
            python_path = 'giotto_env')

