.class final synthetic Lcom/intermedia/view/ModalView$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ModalView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ModalView$$Lambda$2;->arg$1:Lcom/intermedia/view/ModalView;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ModalView$$Lambda$2;->arg$1:Lcom/intermedia/view/ModalView;

    invoke-virtual {v0}, Lcom/intermedia/view/ModalView;->bridge$lambda$2$ModalView()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
