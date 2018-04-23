.class final synthetic Lcom/intermedia/about/RateUsFlow$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/about/RateUsFlow$ViewHost;

.field private final arg$2:Landroid/app/Activity;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$1:Lcom/intermedia/about/RateUsFlow$ViewHost;

    iput-object p2, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$2:Landroid/app/Activity;

    iput-object p3, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$4:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$1:Lcom/intermedia/about/RateUsFlow$ViewHost;

    iget-object v1, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$2:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/about/RateUsFlow$$Lambda$1;->arg$4:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/intermedia/about/RateUsFlow;->lambda$start$1$RateUsFlow(Lcom/intermedia/about/RateUsFlow$ViewHost;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
