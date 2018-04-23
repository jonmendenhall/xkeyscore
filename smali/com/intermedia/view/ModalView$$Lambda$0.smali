.class final synthetic Lcom/intermedia/view/ModalView$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$1:Lcom/intermedia/view/ModalView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/ModalView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/ModalView$$Lambda$0;->arg$1:Lcom/intermedia/view/ModalView;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/ModalView$$Lambda$0;->arg$1:Lcom/intermedia/view/ModalView;

    check-cast p1, Lcom/intermedia/model/HQQuestionResult;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/ModalView;->bridge$lambda$0$ModalView(Lcom/intermedia/model/HQQuestionResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
