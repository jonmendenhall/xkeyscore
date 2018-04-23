.class public final Lcom/intermedia/model/ModalType$Eliminated;
.super Lcom/intermedia/model/ModalType;
.source "ModalType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/ModalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eliminated"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/intermedia/model/ModalType$Eliminated;",
        "Lcom/intermedia/model/ModalType;",
        "questionResult",
        "Lcom/intermedia/model/HQQuestionResult;",
        "(Lcom/intermedia/model/HQQuestionResult;)V",
        "getQuestionResult",
        "()Lcom/intermedia/model/HQQuestionResult;",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final questionResult:Lcom/intermedia/model/HQQuestionResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/model/HQQuestionResult;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "questionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/intermedia/model/ModalType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/intermedia/model/ModalType$Eliminated;->questionResult:Lcom/intermedia/model/HQQuestionResult;

    return-void
.end method


# virtual methods
.method public final getQuestionResult()Lcom/intermedia/model/HQQuestionResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/intermedia/model/ModalType$Eliminated;->questionResult:Lcom/intermedia/model/HQQuestionResult;

    return-object v0
.end method
