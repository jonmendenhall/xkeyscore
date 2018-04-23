.class public Lcom/intermedia/view/CashoutConfirmationModal;
.super Landroid/widget/PopupWindow;
.source "CashoutConfirmationModal.java"


# instance fields
.field private final activity:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 2
    .param p1    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/view/CashoutConfirmationModal;->activity:Landroid/support/v7/app/AppCompatActivity;

    const-string v0, "layout_inflater"

    .line 23
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0a0057

    .line 25
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v1, 0x7f0c002c

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/intermedia/view/CashoutConfirmationModal;->setContentView(Landroid/view/View;)V

    .line 28
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const/high16 p1, 0x10a0000

    .line 29
    invoke-virtual {p0, p1}, Lcom/intermedia/view/CashoutConfirmationModal;->setAnimationStyle(I)V

    const/4 p1, -0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/intermedia/view/CashoutConfirmationModal;->setWidth(I)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/intermedia/view/CashoutConfirmationModal;->setHeight(I)V

    return-void
.end method


# virtual methods
.method dismissPopupWindow()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0a0056,
            0x7f0a0059
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/intermedia/view/CashoutConfirmationModal;->dismiss()V

    .line 38
    iget-object v0, p0, Lcom/intermedia/view/CashoutConfirmationModal;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    return-void
.end method
