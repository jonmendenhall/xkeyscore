.class final synthetic Lcom/intermedia/view/ModalView$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ModalView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ModalView$$Lambda$4;->arg$1:Lcom/intermedia/view/ModalView;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ModalView$$Lambda$4;->arg$1:Lcom/intermedia/view/ModalView;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/ModalView;->bridge$lambda$4$ModalView(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
