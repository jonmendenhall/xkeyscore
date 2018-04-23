.class final Lcom/google/android/gms/internal/zzehl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzehe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzehe;

    check-cast p2, Lcom/google/android/gms/internal/zzehe;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzehe;->zzmyo:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/zzehe;->zzmyo:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzelt;->zzi(JJ)I

    move-result p1

    return p1
.end method
