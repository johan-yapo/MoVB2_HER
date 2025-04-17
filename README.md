# Input Files for the Surface-Slab Models of V<sub>1-x</sub>Mo<sub>x</sub>B<sub>2</sub> for computing the Gibb's Free Energy of Hydrogen Adsorption and analyzing bonding properties using Crystal Orbital Hamilton Population (COHP).

## 1) Cloning the Repository

To clone the **FGT_HER** repository, use the following command:

```sh
git clone https://github.com/johan-yapo/MoVB2_HER.git
```

## 2) Computational Details

The density functional theory (DFT) was used on all the modeled bulk structures of Mo<sub>x</sub>V<sub>1-x</sub>B<sub>2</sub> for the DOS, COHP, and surface structures of the solid solution to determine the H-binding energy (ΔE<sub>H</sub>). The total energy calculations were done using the projector augmented wave coded in the Vienna ab initio simulation package (VASP). In addition, all the VASP calculations done here employed the generalized gradient approximation (GGA) with the exchange and correlation functionals treated by the Perdew-Burke-Enzerhoff (PBE) method for structure relaxations and single-point energy calculations of the bulk models and revised PBE method for the single-point energy calculations of surface models. The convergence threshold for the ionic relaxation loop was set to 0.02 eV/Å in force and the cutoff energy for the plane wave calculations was set to 500 eV. The Brillouin zone integrations were carried k-point mesh density of 0.0167 points Å<sup>-1</sup> using the Monkhorst-Pack automatic grid generation mode.

For the DOS and COHP calculations, the Local-Orbital Basis Suite Towards Electronic-Structure Reconstruction (LOBSTER) program was used. As for the computational settings the energy range analyzed relative to the Fermi level was between -16 to 9 eV with interactions generated with atoms between 1.5 to 4.0 Å. The basis set used was the pbeVaspFit2015 with basis sets with the following basis functions: 5s, 4d, and 4p for Mo. 4s, 3d, and 3p, for V. 2s and 2p for B. As for the DFT computational settings used here, the tetrahedron method with Blöchl corrections and smearing value of 0.2 eV was done to treat partial occupancies. A 2 x 2 x2 supercell was used with 3 metal layers with a total of 8 metal sites (Mo or V) and 2 boron layers, the k-point mesh grid used was 11 x 11 x 11. For the Mo deficient MoB<sub>2</sub> and V<sub>0.25</sub>Mo<sub>0.75</sub>B<sub>2</sub> models, random metal sites were allocated to either Mo or V to the correct chemical formula ratio while for metal deficient models a random Mo site in the models was removed leading to a vacancy value of 12.5% (1/8 metal sites unoccupied) leading to compounds with the chemical formula Mo<sub>0.875</sub>B<sub>2</sub> and V<sub>0.25</sub>Mo<sub>0.62</sub>B<sub>2</sub>.

We begin constructing the surfaces In this work, by cleaving the bulk Mo<sub>0.875</sub>B<sub>2</sub> and V<sub>0.25</sub>Mo<sub>0.625</sub>B<sub>2</sub> into 2-dimensional (2D) slabs with the mixed [110] layer exposed at both the top and bottom and then about 15 Å of vacuum space was added in the [110] direction for the supercells to ensure that there would be no inter-slab interaction which resulted in surface slab. During the structural relaxation step, the cell shape and volume were kept frozen while the positions of all the atoms were allowed to move and the lattice parameters were allowed to change. To calculate the hydrogen coverage on the surfaces, the number of H atoms adsorbed on the surface by half the number of B atoms on the surface.

To calculate the Gibbs free energy (ΔGH) for H adsorption to predict the HER activity of the different HER active sites on the surface the equation ΔG<sub>H</sub> = ΔE<sub>H</sub>  + ΔE<sub>ZPE</sub> – TΔS was used, where ΔEH is the H-surface binding energy computed using DFT, ΔE<sub>ZPE</sub> is the zero-point energy difference between adsorbed H and free H2 and TΔS is the temperature and entropy contribution terms. ΔE<sub>ZPE</sub> is usually very small, between 0.01 to 0.05 eV5 which is around or less than the chemical accuracy target of 1 kcal∙mol<sup>-1</sup> or 0.043 eV that is desired for ab initio computational methods, so it can be neglected here and the equation can be simplified to ΔG<sub>H</sub> = ΔE<sub>H</sub>  – TΔS. Here TΔS is calculated with the approximation, TΔS ≈ 1/2 TS°(H<sub>2</sub>) where T = 298.15 K and S°(H<sub>2</sub>) = 130.7 J∙mol<sup>-1</sup>∙K<sup>-1</sup>). 6 Lastly, the equation used to solve for the binding energy of hydrogen ΔEH was ΔE<sub>H</sub> = E[surface + nH] - E[surface + (n - 1)H] - (1/2) E[H<sub>2</sub>]. and 𝐸[𝑠𝑢𝑟𝑓𝑎𝑐𝑒 + 𝑛𝐻] 𝐸[𝑠𝑢𝑟𝑓𝑎𝑐𝑒 + (𝑛 ― 1)𝐻] are the total energies of the surface with n and n - 1  hydrogen atoms adsorbed on it respectively and calculated using VASP, and 1/2 E[H<sub>2</sub>] is half of the energy of one gas phase, diatomic hydrogen molecule.

![Image](https://github.com/user-attachments/assets/83c2bdd1-c0bc-4e08-a35a-30cb141a74e4)

**Figure 1.** Gibbs free energy (ΔGH) for H adsorption on the {110} surfaces of Mo deficient V<sub>0.250</sub>Mo<sub>0.625</sub>B<sub>2</sub>, Mo<sub>0.873</sub>B<sub>2</sub>, MoB<sub>2</sub>, and VB<sub>2</sub> as a function of hydrogen coverage. 

## Citation  
This work hasn't been fully published yet, but if you use this work, please cite Dr. Eunsoo Lee's dissertation here:  

https://escholarship.org/uc/item/99s0g1hq
