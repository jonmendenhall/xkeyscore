.class public Lcom/firebase/ui/database/CachingSnapshotParser;
.super Lcom/firebase/ui/common/BaseCachingSnapshotParser;
.source "CachingSnapshotParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/ui/common/BaseCachingSnapshotParser<",
        "Lcom/google/firebase/database/DataSnapshot;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/firebase/ui/common/BaseSnapshotParser;)V
    .locals 0
    .param p1    # Lcom/firebase/ui/common/BaseSnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/common/BaseSnapshotParser<",
            "Lcom/google/firebase/database/DataSnapshot;",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/firebase/ui/common/BaseCachingSnapshotParser;-><init>(Lcom/firebase/ui/common/BaseSnapshotParser;)V

    return-void
.end method


# virtual methods
.method public getId(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 12
    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/CachingSnapshotParser;->getId(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
