.class public Lcom/firebase/ui/database/ClassSnapshotParser;
.super Ljava/lang/Object;
.source "ClassSnapshotParser.java"

# interfaces
.implements Lcom/firebase/ui/database/SnapshotParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/ui/database/SnapshotParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/firebase/ui/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/firebase/ui/database/ClassSnapshotParser;->mClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public parseSnapshot(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DataSnapshot;",
            ")TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/firebase/ui/database/ClassSnapshotParser;->mClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseSnapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 15
    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/ClassSnapshotParser;->parseSnapshot(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
