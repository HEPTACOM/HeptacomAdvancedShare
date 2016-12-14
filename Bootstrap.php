<?php

use Shopware_Plugins_Frontend_HeptacomAdvancedShare_Components_Plugin_Bootstrap as Bootstrap;
use Shopware\HeptacomAdvancedShare\Subscriber;

class Shopware_Plugins_Frontend_HeptacomAdvancedShare_Bootstrap extends Bootstrap
{
	public function registerComponents()
    {
        $this->Application()->Loader()->registerNamespace(
            'Shopware\HeptacomAdvancedShare',
            $this->Path()
        );
    }

    /**
     * @return array
     */
    protected function getSubscribers()
    {
        return [
            new Subscriber\Frontend()
        ];
    }

    /**
     * @return array
     */
    public function enable()
    {
        return [
            'success' => true,
            'invalidateCache' => [
                'theme',
                'template'
            ]
        ];
    }

    /**
     * @return array
     */
    public function disable()
    {
        return [
            'success' => true,
            'invalidateCache' => [
                'theme',
                'template'
            ]
        ];
    }

    /**
     * @return mixed|null
     */
    public function getVersion()
    {
        return $this->getPluginInfo('currentVersion');
    }
}
