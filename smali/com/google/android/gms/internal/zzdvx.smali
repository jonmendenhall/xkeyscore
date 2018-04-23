.class final Lcom/google/android/gms/internal/zzdvx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdwb;


# instance fields
.field private final zzmej:I

.field private final zzmek:I

.field private final zzmel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmem:Z


# direct methods
.method public constructor <init>(IILjava/util/Map;Z)V
    .locals 0
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzdvx;->zzmej:I

    iput p2, p0, Lcom/google/android/gms/internal/zzdvx;->zzmek:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdvx;->zzmel:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzdvx;->zzmem:Z

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzdwa;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdvx;->zzmem:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdvx;->zzmek:I

    iget v2, p0, Lcom/google/android/gms/internal/zzdvx;->zzmej:I

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdvx;->zzmel:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdwa;->zzbrk()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/zzdvx;->zzmej:I

    if-le p1, v0, :cond_3

    return v1

    :cond_3
    return v3
.end method
