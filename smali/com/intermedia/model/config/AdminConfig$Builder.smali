.class public abstract Lcom/intermedia/model/config/AdminConfig$Builder;
.super Ljava/lang/Object;
.source "AdminConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AdminConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/config/AdminConfig;
.end method

.method public abstract segments(Ljava/util/List;)Lcom/intermedia/model/config/AdminConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/config/AdminConfig$SegmentToken;",
            ">;)",
            "Lcom/intermedia/model/config/AdminConfig$Builder;"
        }
    .end annotation
.end method

.method public abstract showTypes(Ljava/util/List;)Lcom/intermedia/model/config/AdminConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/intermedia/model/config/AdminConfig$Builder;"
        }
    .end annotation
.end method
