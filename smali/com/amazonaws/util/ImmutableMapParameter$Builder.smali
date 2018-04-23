.class public Lcom/amazonaws/util/ImmutableMapParameter$Builder;
.super Ljava/lang/Object;
.source "ImmutableMapParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/ImmutableMapParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;->entries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazonaws/util/ImmutableMapParameter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazonaws/util/ImmutableMapParameter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;->entries:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 286
    new-instance v1, Lcom/amazonaws/util/ImmutableMapParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/amazonaws/util/ImmutableMapParameter;-><init>(Ljava/util/Map;Lcom/amazonaws/util/ImmutableMapParameter$1;)V

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/amazonaws/util/ImmutableMapParameter$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/amazonaws/util/ImmutableMapParameter$Builder;->entries:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/amazonaws/util/ImmutableMapParameter;->access$000(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
