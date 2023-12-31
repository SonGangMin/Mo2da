import React from "react";
import Header from "../../components/common/Header";
import { useSelector } from "react-redux";
import { RootState } from "../../modules";
import { getCarousel } from "../../lib/api/admin";
import client from "../../lib/api/client";

const HeaderContainer = () => {
  const { user } = useSelector((state: RootState) => ({
    user: state.user,
  }));
  const [carouselData, setCarouselData] = React.useState<any>(null);

  const getData = async () => {
    try {
      const response = await getCarousel();
      setCarouselData(response.data);
    } catch (error) {
      console.error("에러:", error);
    }
  };

  const onClickCarousel = async (carouselNum: number) => {
    await client.post("/admin/clickCarousel", { carouselNum });
  };

  React.useEffect(() => {
    getData();
  }, []);

  return (
    <div>
      <Header
        user={user}
        carouselData={carouselData}
        onClickCarousel={onClickCarousel}
      />
    </div>
  );
};

export default HeaderContainer;
