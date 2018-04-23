.class public final Lcom/intermedia/libs/Either$Right;
.super Lcom/intermedia/libs/Either;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/libs/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Right"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Nothing:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/intermedia/libs/Either<",
        "TNothing;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0006\u0008\u0002\u0010\u0001 \u0001*\u0006\u0008\u0003\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0003\u00a2\u0006\u0002\u0010\u0005R\u0016\u0010\u0004\u001a\u00028\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/intermedia/libs/Either$Right;",
        "Nothing",
        "R",
        "Lcom/intermedia/libs/Either;",
        "right",
        "(Ljava/lang/Object;)V",
        "getRight$app_externalRelease",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/intermedia/libs/Either;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/intermedia/libs/Either$Right;->right:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getRight$app_externalRelease()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/intermedia/libs/Either$Right;->right:Ljava/lang/Object;

    return-object v0
.end method
