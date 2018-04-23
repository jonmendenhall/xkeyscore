.class Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ExtraLifeOptInModalView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;-><init>(Lcom/intermedia/view/ExtraLifeOptInModalView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;

.field final synthetic val$target:Lcom/intermedia/view/ExtraLifeOptInModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;Lcom/intermedia/view/ExtraLifeOptInModalView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$3;->this$0:Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding;

    iput-object p2, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$3;->val$target:Lcom/intermedia/view/ExtraLifeOptInModalView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView_ViewBinding$3;->val$target:Lcom/intermedia/view/ExtraLifeOptInModalView;

    invoke-virtual {p1}, Lcom/intermedia/view/ExtraLifeOptInModalView;->dismiss()V

    return-void
.end method
