.class public final Lcom/google/firebase/auth/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/FirebaseUserMetadata;


# instance fields
.field private mCreationTimestamp:J

.field private zzmhr:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/auth/internal/zzi;->zzmhr:J

    iput-wide p3, p0, Lcom/google/firebase/auth/internal/zzi;->mCreationTimestamp:J

    return-void
.end method


# virtual methods
.method public final getCreationTimestamp()J
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzi;->mCreationTimestamp:J

    return-wide v0
.end method

.method public final getLastSignInTimestamp()J
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzi;->zzmhr:J

    return-wide v0
.end method
