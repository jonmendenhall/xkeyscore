.class public abstract Lcom/intermedia/model/retrofit/envelope/ActiveFriendsEnvelope;
.super Ljava/lang/Object;
.source "ActiveFriendsEnvelope.java"


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
.method public abstract viewers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/ViewerUpdateUser;",
            ">;"
        }
    .end annotation
.end method
