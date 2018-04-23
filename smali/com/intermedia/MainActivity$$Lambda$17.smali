.class final synthetic Lcom/intermedia/MainActivity$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/MainActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/MainActivity$$Lambda$17;->arg$1:Lcom/intermedia/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/MainActivity$$Lambda$17;->arg$1:Lcom/intermedia/MainActivity;

    invoke-virtual {v0, p1}, Lcom/intermedia/MainActivity;->lambda$null$3$MainActivity(Landroid/view/View;)V

    return-void
.end method
