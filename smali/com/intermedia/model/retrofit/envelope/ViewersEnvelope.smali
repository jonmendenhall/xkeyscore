.class public abstract Lcom/intermedia/model/retrofit/envelope/ViewersEnvelope;
.super Ljava/lang/Object;
.source "ViewersEnvelope.java"


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract data()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PartialUser;",
            ">;"
        }
    .end annotation
.end method
