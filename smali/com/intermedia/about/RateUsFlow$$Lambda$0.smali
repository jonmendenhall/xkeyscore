.class final synthetic Lcom/intermedia/about/RateUsFlow$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/about/RateUsFlow$ViewHost;

.field private final arg$2:Landroid/app/Activity;

.field private final arg$3:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$0;->arg$1:Lcom/intermedia/about/RateUsFlow$ViewHost;

    iput-object p2, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$0;->arg$2:Landroid/app/Activity;

    iput-object p3, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$0;->arg$3:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$0;->arg$1:Lcom/intermedia/about/RateUsFlow$ViewHost;

    iget-object v1, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$0;->arg$2:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$0;->arg$3:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/intermedia/about/RateUsFlow;->lambda$start$0$RateUsFlow(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
