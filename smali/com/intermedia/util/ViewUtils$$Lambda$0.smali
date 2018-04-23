.class final synthetic Lcom/intermedia/util/ViewUtils$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/util/ViewUtils$$Lambda$0;->arg$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/util/ViewUtils$$Lambda$0;->arg$1:Landroid/view/View;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/intermedia/util/ViewUtils;->lambda$setGone$0$ViewUtils(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method
